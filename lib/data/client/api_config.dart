// class ApiUrl {
//   static const baseurl = bool.fromEnvironment('dev_mode')
//       ? String.fromEnvironment(
//           'url_api_dev',
//           defaultValue: 'http://oops.com.br/',
//         )
//       : String.fromEnvironment(
//           'url_api_prod',
//           defaultValue: 'http://oops.com.br/',
//         );
// }
import '../../core/env.dart';

class ApiConfig {
  static final baseurl = Env.api;
}
