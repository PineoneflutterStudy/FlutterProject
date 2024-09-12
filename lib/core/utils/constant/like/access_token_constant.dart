

import 'package:flutter_config/flutter_config.dart';

const String baseUrl = 'https://sgisapi.kostat.go.kr';
const String endPoint = '/OpenAPI3/auth/authentication.json?';

const key = 'consumer_key=';
const secret = 'consumer_secret=';


String serviceId = FlutterConfig.get('SGIS_REGION_INFO_SERVICE_SERVICE_ID');
String secretId = FlutterConfig.get('SGIS_REGION_INFO_SERVICE_SECRET_KEY');
String accessToken() {
  StringBuffer url = new StringBuffer();
  url.write(baseUrl);
  url.write(endPoint);
  url.write(key + serviceId + '&');
  url.write(secret + secretId);

  return url.toString();
}