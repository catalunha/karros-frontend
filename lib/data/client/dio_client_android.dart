import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:get_it/get_it.dart';

import '../../domain/services/token/token_storage.dart';

import 'api_config.dart';

final class DioClient extends DioForNative {
  DioClient()
      : super(
          BaseOptions(
            baseUrl: ApiUrl.baseurl,
            connectTimeout: const Duration(seconds: 10),
            receiveTimeout: const Duration(seconds: 60),
          ),
        ) {
    log('DioForNative', name: runtimeType.toString());
    interceptors.addAll(
      [
        // LogInterceptor(
        //   requestBody: true,
        //   responseBody: true,
        // ),
        InterceptorsWrapper(
          onRequest: (
            RequestOptions options,
            RequestInterceptorHandler handler,
          ) {
            try {
              final TokenStorage tokenStorage = GetIt.instance.get();
              final token = tokenStorage.getAccess();
              options.headers["Authorization"] = "Bearer $token";
            } catch (e) {
              // no op
            }
            return handler.next(options);
          },
          onError: (error, handler) async {
            if (error.response?.statusCode == 401) {
              try {
                final TokenStorage tokenStorage = GetIt.instance.get();
                final token = tokenStorage.getRefresh();

                final response = await unauth
                    .post("${ApiUrl.baseurl}/auth/token/refresh/", data: {
                  "refresh": token,
                });

                final String newAccessToken = response.data["access"];
                tokenStorage.setAccess(newAccessToken);

                error.requestOptions.headers['Authorization'] =
                    'Bearer $newAccessToken';

                return handler
                    .resolve(await unauth.fetch(error.requestOptions));
              } catch (e) {
                handler.reject(error);
              }
            }
            handler.reject(error);
          },
        ),
      ],
    );
  }

  DioClient get auth {
    options.extra['authorized_request'] = true;
    return this;
  }

  DioClient get unauth {
    options.extra['authorized_request'] = false;
    return this;
  }
}
