import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';

class PasswordInputValidationEvent extends LoginBlocEvent {
  final String password;
  PasswordInputValidationEvent({required this.password});
}
