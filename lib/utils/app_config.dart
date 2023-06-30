class AppConfig {
  static String baseUrl = 'http://eztrade4.fpts.com.vn';
  static String apiVersionPrefix = '';
  static String tokenKey = '';
  static configDev() {
    baseUrl = 'http://eztrade4.fpts.com.vn';
    apiVersionPrefix = 'api/gateway/v1/';
    tokenKey = '';
  }

  static configPro() {}
}
