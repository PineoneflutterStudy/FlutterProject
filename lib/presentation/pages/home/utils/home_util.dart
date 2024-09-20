import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../../domain/model/display/home/tour_festival_info.model.dart';
import '../../../../domain/usecase/planner/planner.usecase.dart';
import '../../../../service_locator.dart';
import '../../plan/bloc/address_bloc/address_bloc.dart';

class HomeUtil {
  /**
   * 년도 제외 Date
   */
  static String getDate(TourFestivalInfoModel? model) {
    if (model != null) {
      if (model.eventenddate.length >= 8 && model.eventenddate.length >= 8) {
        var start =
            '${model.eventstartdate.substring(4, 6)}.${model.eventstartdate.substring(6, 8)}';
        var end =
            '${model.eventenddate.substring(4, 6)}.${model.eventenddate.substring(6, 8)}';

        if (start == end)
          return '$start';
        else
          return '$start ~ $end';
      }
    }

    return '';
  }
  /**
   * html 줄 바꿈 및 태그 제거
   */
  static String stripHtml(String html) {
    // <br> 태그를 줄 바꿈 문자로 변환
    String withBreaks =
        html.replaceAll(RegExp(r'<br\s*/?>', caseSensitive: false), '\n');
    // HTML 태그를 제거
    String withoutTags =
        withBreaks.replaceAll(RegExp(r'<[^>]*>', multiLine: true), '');
    // 필요에 따라 중복된 줄 바꿈 제거
    String cleanedText = withoutTags.replaceAll(RegExp(r'\n\s*\n'), '\n\n');
    return cleanedText.trim();
  }
  /**
   * 추천 화면 이동
   */
  static void searchRecommend(BuildContext context, String value) {
    if (value.isEmpty) return;
    // Bloc 초기화
    AddressBloc addressBloc = AddressBloc(locator<PlannerUsecase>());
    // Address 추가 and 초기화
    addressBloc.add(AddressInitialized('$value'));
    // 추천 화면 이동
    context.pushNamed('rcmn',
        queryParameters: {'location': '$value', 'category': 'FD6', 'root' : 'home'},
        extra: addressBloc);
  }
}
