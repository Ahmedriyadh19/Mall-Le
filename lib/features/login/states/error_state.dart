import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';

class LoginErrorState extends LoginBlocState {
  final String message;

  LoginErrorState(this.message);
}
