import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_token.freezed.dart';
part 'access_token.g.dart';

@freezed
class AccessTokenModel with _$AccessTokenModel {
  const factory AccessTokenModel ({
    required String accessToken,
  }) = _AccessTokenModel;



  factory AccessTokenModel.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenModelFromJson(json);
}