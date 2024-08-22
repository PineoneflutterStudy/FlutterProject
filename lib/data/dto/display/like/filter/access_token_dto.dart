import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_token_dto.freezed.dart';
part 'access_token_dto.g.dart';

@freezed
class AccessTokenDto with _$AccessTokenDto {
  const factory AccessTokenDto({
    required String? id,
    required Result? result,
    required String? errMsg,
    required int? errCd,
    required String? trErr,
  }) = _AccessTokenDto;

  factory AccessTokenDto.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenDtoFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required String? accessTimeout,
    required String? accessToken,
  }) = _Result;



  factory Result.fromJson(Map<String, dynamic> json) =>
      _$ResultFromJson(json);
}