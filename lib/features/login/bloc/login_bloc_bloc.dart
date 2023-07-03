import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:mall_le/features/login/events/auth_toggle_event.dart';
import 'package:mall_le/features/login/events/login_password_obscured_event.dart';
import 'package:mall_le/features/login/states/login_states_changes.dart';

part 'login_bloc_event.dart';
part 'login_bloc_state.dart';

class LoginBlocBloc extends Bloc<LoginBlocEvent, LoginBlocState> {
  int option = 0;
  String? message;
  bool isObscured = true;
  LoginBlocBloc() : super(LoginBlocInitial()) {
    on<LoginBlocEvent>((event, emit) {
      if (event is LoginAuthToggleEvent) {
        option = event.option;
        emit(LoginStateChange(option: event.option, isObscured: isObscured, errorMessage: message));
      } else if (event is LoginPasswordObscuredEvent) {
        isObscured = event.isObscured;
        emit(LoginStateChange(isObscured: event.isObscured, errorMessage: message, option: option));
      }
    });
  }
}
