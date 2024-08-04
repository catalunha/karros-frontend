class Env {
  static String get version {
    return const String.fromEnvironment('version');
  }

  static bool get developmentMode {
    return const bool.fromEnvironment('dev_mode');
  }

  static String get api {
    return const bool.fromEnvironment('dev_mode')
        ? const String.fromEnvironment(
            'url_api_dev',
            defaultValue: 'http://oops.com.br/',
          )
        : const String.fromEnvironment(
            'url_api_prod',
            defaultValue: 'http://oops.com.br/',
          );
  }
}
