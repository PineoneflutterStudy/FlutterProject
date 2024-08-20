import 'package:freezed_annotation/freezed_annotation.dart';

part 'kakao_response_wrapper.freezed.dart';
part 'kakao_response_wrapper.g.dart';
@Freezed(genericArgumentFactories: true)
class KakaoResponseWrapper<T> with _$KakaoResponseWrapper<T> {
  const factory KakaoResponseWrapper({
    @Default([]) List<T> documents,
    required Meta meta,
  }) = _KakaoResponseWrapper<T>;

  factory KakaoResponseWrapper.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$KakaoResponseWrapperFromJson(json, fromJsonT);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    required bool is_end,
    required int pageable_count,
    SameName? same_name,
    required int total_count,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class SameName with _$SameName {
  const factory SameName({
    required String keyword,
    required List<String> region,
    required String selected_region,
  }) = _SameName;

  factory SameName.fromJson(Map<String, dynamic> json) => _$SameNameFromJson(json);
}