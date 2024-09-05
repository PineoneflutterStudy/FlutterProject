part of 'login_check_bloc.dart';

@freezed
class LoginCheckEvent with _$LoginCheckEvent {
  const factory LoginCheckEvent.checkLogin() = _CheckLoginState;
}
