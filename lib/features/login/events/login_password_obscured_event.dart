import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';

class LoginPasswordObscuredEvent extends LoginBlocEvent {
  final bool isObscured;
  LoginPasswordObscuredEvent({required this.isObscured});
}
