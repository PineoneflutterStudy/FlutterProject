import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/serializer/timestamp_serializer.dart';

part 'user.model.freezed.dart';
part 'user.model.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String uid,
    required String email,
    required List<String> providers,
    String? photoUrl,
    @TimestampSerializer() DateTime? creationTime,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
