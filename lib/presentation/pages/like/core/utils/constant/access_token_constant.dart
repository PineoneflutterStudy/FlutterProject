

const String baseUrl = 'https://sgisapi.kostat.go.kr';
const String endPoint = '/OpenAPI3/auth/authentication.json?';

const key = 'consumer_key=';
const secret = 'consumer_secret=';

const serviceId = '40c26caff81e4105a864';
const secretId = 'f1e8d369e9c6430691a1';

String accessToken() {
  StringBuffer url = new StringBuffer();
  url.write(baseUrl);
  url.write(endPoint);
  url.write(key + serviceId + '&');
  url.write(secret + secretId);

  return url.toString();
}