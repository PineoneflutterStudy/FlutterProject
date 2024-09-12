import '../../../../domain/model/display/home/tour_festival_info.model.dart';

class FestivalUtil {
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
}
