import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_bloc.freezed.dart';
part 'email_event.dart';
part 'email_state.dart';

/// ## 이메일 화면 Bloc
///
/// author [Eogeum@naver.com]
class EmailBloc extends Bloc<EmailEvent, EmailState> {
//==============================================================================
//  Fields
//==============================================================================

//==============================================================================
//  Methods
//==============================================================================
  EmailBloc() : super(const EmailState.initial()) {
    on<EmailEvent>((event, emit) {
      // CustomLogger.logger.i('$_tag Event occurred. event = ${event.runtimeType}');
      // event.when(started: started);
    });
  }
}
