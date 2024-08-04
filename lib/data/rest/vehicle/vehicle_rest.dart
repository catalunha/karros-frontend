import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/models/vehicle_list.dart';
import '../../client/dio_client.dart'
    if (dart.library.io) '../../client/dio_client_android.dart'
    if (dart.library.js) '../../client/dio_client_web.dart';

part 'vehicle_rest.g.dart';

@RestApi()
abstract class VehicleRest {
  factory VehicleRest(DioClient dio) = _VehicleRest;
  @GET('/api/stores/vehicle/all/')
  Future<VehicleList> listAll(@Queries() Map<String, dynamic> filter);
}
