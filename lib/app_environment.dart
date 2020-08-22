abstract class AppEnvironment{
  static String headerKey = 'Authorization';
  static String baseApiUrl;
  static setupEnv(Environment env){
     switch (env) {
      case Environment.dev:
        {
          baseApiUrl =
              'development.baseUrl';

          break;
        }
      case Environment.staging:
        {
          baseApiUrl =
              'staging.baseUrl';
          break;
        }
      case Environment.prod:
        {
          baseApiUrl = 'staging.production';
          break;
        }
    }
  }
}

enum Environment { dev, staging, prod }

