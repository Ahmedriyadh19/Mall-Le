import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'events/button_auth_toggle_login_method_event.dart';
import 'events/button_login_process_event.dart';
import 'events/checker_otp_login_event.dart';
import 'events/request_send_otp_event.dart';
import 'events/visibility_password_option_event.dart';
import 'states/login_states_changes.dart';

part 'login_bloc_event.dart';
part 'login_bloc_state.dart';

class LoginBlocBloc extends Bloc<LoginBlocEvent, LoginBlocState> {
  int option = 0;
  String? message;
  bool isObscured = true;
  bool isSend = false;
  LoginBlocBloc() : super(LoginBlocInitial()) {
    on<LoginBlocEvent>((event, emit) {
      if (event is ButtonAuthToggleLoginMethodEvent) {
        option = event.option;
        isSend = false;
        emit(LoginStateChange(option: event.option, isObscured: isObscured, errorMessage: message, isSend: isSend));
      } else if (event is VisibilityPasswordOptionEvent) {
        isObscured = event.isObscured;
        emit(LoginStateChange(isObscured: event.isObscured, errorMessage: message, option: option, isSend: isSend));
      } else if (event is ButtonLoginProcessEvent) {
      } else if (event is CheckerOTPLoginEvent) {
      } else if (event is RequestSendOTPEvent) {
        isSend = !isSend;
        emit(LoginStateChange(isObscured: isObscured, errorMessage: message, option: option, isSend: isSend));
      }
    });
  }
}
