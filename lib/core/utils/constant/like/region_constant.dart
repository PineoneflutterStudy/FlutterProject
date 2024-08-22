const String apiKey = 'f1e8d369e9c6430691a1';


const String baseUrl = 'https://sgisapi.kostat.go.kr';
const String endPoint = '/OpenAPI3/addr/stage.json?';

const String token = "accessToken=";
const String cd = "&cd=";

String regionAddress(String accessToken, String? cdValue) {
  StringBuffer url = new StringBuffer();

  url.write(baseUrl);
  url.write(endPoint);
  url.write(token + accessToken);

  if (cdValue != null && cdValue.isNotEmpty) {
    url.write(cd + cdValue);
  }

  return url.toString();
}