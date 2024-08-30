import 'package:equatable/equatable.dart';

enum HomeResponseStatus { init, load, success, fail }

/**
 * 홈 공통으로 사용 State
 */
class HomeState extends Equatable {
  const HomeState({this.status = HomeResponseStatus.init});

  final HomeResponseStatus status;

  @override
  List<Object?> get props => [
    status
  ];
}
