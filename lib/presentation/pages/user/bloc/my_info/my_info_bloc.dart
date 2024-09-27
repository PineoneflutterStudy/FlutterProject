import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_info_bloc.freezed.dart';
part 'my_info_event.dart';
part 'my_info_state.dart';

/// ## 내 정보 화면 Bloc
///
/// author [Eogeum@naver.com]
class MyInfoBloc extends Bloc<MyInfoEvent, MyInfoState> {
  MyInfoBloc() : super(const MyInfoState.initial()) {
    on<MyInfoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
