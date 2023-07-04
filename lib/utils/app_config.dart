class AppConfig {
  static String baseUrl = 'http://eztrade4.fpts.com.vn';
  static const String apiVersionPrefix = '/sg/api/gateway/v1';
  static String tokenKey = '';
  static String clientCode = '';
  static String passWord = '';
  static String sessionKey = '';
  static String isRemember = '';
  static String userName = '';
  static configDev() {
    baseUrl = 'http://eztrade4.fpts.com.vn';
  }

  static configPro() {}
}
