/**
 * 통계청에서 제공하는 지역명과 카카오 API 에서 제공하는 지역명이 달라 replace 하는 유틸 클래스
 */

mixin FilterUtil {

  String parseMajorAddress(String major) {
    if (major.isEmpty) return '';

    if (major.contains('특별시')) {
      return major.replaceAll('특별시', '');
    }
    else if (major.contains('광역시')) {
      return major.replaceAll('광역시', '');
    }
    else if (major.contains('경기')) {
      return '경기';
    }
    else if (major.contains('충청')) {
      if (major.contains('북')) {
        return '충북';
      } else {
        return '충남';
      }
    }
    else if (major.contains('전라')) {
      if (major.contains('북')) {
        return '전북';
      } else {
        return '전남';
      }
    }
    else if (major.contains('경상')) {
      if (major.contains('북')) {
        return '경북';
      } else {
        return '경남';
      }
    }

    return major;
  }

  String parseMiddleAddress(String middle) {
    if (middle.isEmpty) return '';

    return middle;
  }

  String parseMinorAddress(String minor) {
    if (minor.isEmpty) return '';

    return minor.replaceAll(RegExp(r'\d'), '');
  }

  String parseResult(String result) {
    return result.replaceAll(' ', ' > ');
  }
}