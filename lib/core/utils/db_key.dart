class DBKey {
  static const String DB_USERS = "Users"; // 유저정보
  static const String DB_LIKES = "Likes"; // 찜목록
  static const String DB_LOCATIONS = "Locations"; // 중간지점
  static const String DB_DB_START = "Start"; // 출발지들
  static const String DB_DB_DESTINATION = "Destination"; // 목적지
  static const String DB_PLANNER = "Planners"; // 여행계획
  static const String DB_HOME = "Home"; //
  static const String DB_BANNER = "Banner"; //
}

/// ## Users(유저정보) 콜렉션의 필드
///
/// author [Eogeum@naver.com]
class UsersField {
  static const String UID = "uid";
  static const String EMAIL = "email";
  static const String PROVIDERS = "providers";
  static const String PHOTO_URL = "photoURL";
  static const String CREATION_TIME = "creationTime";
}
