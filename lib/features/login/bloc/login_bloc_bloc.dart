import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:mall_le/features/login/events/login_auth_toggle_event.dart';
import 'package:mall_le/features/login/events/login_button_event.dart';
import 'package:mall_le/features/login/events/login_otp_complete_event.dart';
import 'package:mall_le/features/login/events/login_password_obscured_event.dart';
import 'package:mall_le/features/login/events/login_phone_otp_send_event.dart';
import 'package:mall_le/features/login/states/login_states_changes.dart';

part 'login_bloc_event.dart';
part 'login_bloc_state.dart';

class LoginBlocBloc extends Bloc<LoginBlocEvent, LoginBlocState> {
  int option = 0;
  String? message;
  bool isObscured = true;
  bool isSend = false;
  LoginBlocBloc() : super(LoginBlocInitial()) {
    on<LoginBlocEvent>((event, emit) {
      if (event is LoginAuthToggleEvent) {
        option = event.option;
        isSend = false;
        emit(LoginStateChange(option: event.option, isObscured: isObscured, errorMessage: message, isSend: isSend));
      } else if (event is LoginPasswordObscuredEvent) {
        isObscured = event.isObscured;
        emit(LoginStateChange(isObscured: event.isObscured, errorMessage: message, option: option, isSend: isSend));
      } else if (event is LoginButtonEvent) {
      } else if (event is LoginOtpCompleteEvent) {
      } else if (event is LoginPhoneOtpSendEvent) {
        isSend = !isSend;
        emit(LoginStateChange(isObscured: isObscured, errorMessage: message, option: option, isSend: isSend));
      }
    });
  }
}
