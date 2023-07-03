// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';

class LoginStateChange extends LoginBlocState {
  final bool isObscured;
  final String? errorMessage;
  final String? phoneNumberInput;
  final String? passwordInput;
  final int option;

  LoginStateChange({
    required this.isObscured,
    required this.option,
    this.errorMessage,
    this.phoneNumberInput,
    this.passwordInput,
  });
}
