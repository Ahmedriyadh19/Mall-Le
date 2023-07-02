import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:mall_le/features/login/events/auth_toggle_event.dart';
import 'package:mall_le/features/login/events/login_event.dart';
import 'package:mall_le/features/login/events/login_password_event.dart';
import 'package:mall_le/features/login/states/auth_toggle_state.dart';
import 'package:mall_le/features/login/states/login_password_obscured_state.dart';

part 'login_bloc_event.dart';
part 'login_bloc_state.dart';

class LoginBlocBloc extends Bloc<LoginBlocEvent, LoginBlocState> {
  LoginBlocBloc() : super(LoginBlocInitial()) {
    on<LoginBlocEvent>((event, emit) {
      if (event is LoginButtonEvent) {
      } else if (event is LoginAuthToggleEvent) {
        emit(AuthSelectedState(event.option));
      } else if (event is LoginPasswordObscuredEvent) {
        emit(LoginPasswordObscuredState(event.isObscured));
      }
    });
  }
}
