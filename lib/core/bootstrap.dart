import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../domain/services/token/token_storage.dart';

Future<void> bootstrap() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  GetIt.instance.registerSingleton<SharedPreferences>(sharedPreferences);

  GetIt.instance
      .registerSingleton(TokenStorage(sharedPreferences: sharedPreferences));
}
