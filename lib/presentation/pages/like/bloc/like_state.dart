part of 'like_bloc.dart';

@freezed
class LikeState with _$LikeState {
  const factory LikeState.initial(bool isLogined) = _Initial;
  const factory LikeState.loading() = _Loading;
  const factory LikeState.success() = _Success;
  const factory LikeState.error() = _Error;
}
