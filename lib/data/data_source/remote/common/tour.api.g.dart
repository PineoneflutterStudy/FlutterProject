// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour.api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _TourApi implements TourApi {
  _TourApi(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<TourResponseWrapper> getPlaceList(
    String numOfRows,
    String pageNo,
    String MobileOS,
    String MobileApp,
    int serviceKey,
    int _type,
    String listYN,
    String arrange,
    String contentTypeId,
    String mapX,
    String mapY,
    String radius,
    String modifiedtime,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'numOfRows': numOfRows,
      r'pageNo': pageNo,
      r'MobileOS': MobileOS,
      r'MobileApp': MobileApp,
      r'serviceKey': serviceKey,
      r'_type': _type,
      r'listYN': listYN,
      r'arrange': arrange,
      r'contentTypeId': contentTypeId,
      r'mapX': mapX,
      r'mapY': mapY,
      r'radius': radius,
      r'modifiedtime': modifiedtime,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<TourResponseWrapper>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/keyword.json?',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = TourResponseWrapper.fromJson(_result.data!);
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
