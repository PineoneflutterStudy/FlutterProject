class AccessTokenEntity {
  final String? id;
  final Result? result;
  final String? errMsg;
  final int? errCd;
  final String? trErr;

  AccessTokenEntity.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      result = Result.fromJson(json['result']),
      errMsg = json['errMsg'],
      errCd = json['errCd'],
      trErr = json['trErr'];
}

class Result {
  final String? accessTimeout;
  final String? accessToken;

  Result.fromJson(Map<String, dynamic> json)
    : accessTimeout = json ['accessTimeout'],
      accessToken = json ['accessToken'];
}