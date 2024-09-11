// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_service.api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _TourServiceApi implements TourServiceApi {
  _TourServiceApi(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<TourServiceResponseWrapper<TourLocationDto>> getTourLocationInfo(
    String serviceKey,
    int numOfRows,
    int pageNo,
    String MobileOS,
    String MobileApp,
    String _type,
    String listYN,
    String arrange,
    String mapX,
    String mapY,
    String radius,
    String contentTypeId,
    String modifiedtime,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'serviceKey': serviceKey,
      r'numOfRows': numOfRows,
      r'pageNo': pageNo,
      r'MobileOS': MobileOS,
      r'MobileApp': MobileApp,
      r'_type': _type,
      r'listYN': listYN,
      r'arrange': arrange,
      r'mapX': mapX,
      r'mapY': mapY,
      r'radius': radius,
      r'contentTypeId': contentTypeId,
      r'modifiedtime': modifiedtime,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<TourServiceResponseWrapper<TourLocationDto>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/locationBasedList1?',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value =
        TourServiceResponseWrapper<TourLocationDto>.fromJson(_result.data!);
    return _value;
  }

  @override
  Future<TourServiceResponseWrapper<TourImageInfoDto>> getTourImageInfo(
    String serviceKey,
    int numOfRows,
    int pageNo,
    String MobileOS,
    String MobileApp,
    String _type,
    String contentId,
    String imageYN,
    String subImageYN,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'serviceKey': serviceKey,
      r'numOfRows': numOfRows,
      r'pageNo': pageNo,
      r'MobileOS': MobileOS,
      r'MobileApp': MobileApp,
      r'_type': _type,
      r'contentId': contentId,
      r'imageYN': imageYN,
      r'subImageYN': subImageYN,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<TourServiceResponseWrapper<TourImageInfoDto>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/detailImage1?',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value =
        TourServiceResponseWrapper<TourImageInfoDto>.fromJson(_result.data!);
    return _value;
  }

  @override
  Future<TourServiceResponseWrapper<TourFestivalInfoDto>> getTourFestivalInfo(
    String serviceKey,
    int numOfRows,
    int pageNo,
    String MobileOS,
    String MobileApp,
    String _type,
    String listYN,
    String arrange,
    String eventStartDate,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'serviceKey': serviceKey,
      r'numOfRows': numOfRows,
      r'pageNo': pageNo,
      r'MobileOS': MobileOS,
      r'MobileApp': MobileApp,
      r'_type': _type,
      r'listYN': listYN,
      r'arrange': arrange,
      r'eventStartDate': eventStartDate,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<TourServiceResponseWrapper<TourFestivalInfoDto>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/searchFestival1?',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value =
        TourServiceResponseWrapper<TourFestivalInfoDto>.fromJson(_result.data!);
    return _value;
  }

  @override
  Future<TourServiceResponseWrapper<TourFestivalInfoDto>> getTourDetailInfo(
    String serviceKey,
    int numOfRows,
    int pageNo,
    String MobileOS,
    String MobileApp,
    String _type,
    String contentId,
    String contentTypeId,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'serviceKey': serviceKey,
      r'numOfRows': numOfRows,
      r'pageNo': pageNo,
      r'MobileOS': MobileOS,
      r'MobileApp': MobileApp,
      r'_type': _type,
      r'contentId': contentId,
      r'contentTypeId': contentTypeId,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<TourServiceResponseWrapper<TourFestivalInfoDto>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/detailIntro1?',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value =
        TourServiceResponseWrapper<TourFestivalInfoDto>.fromJson(_result.data!);
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
