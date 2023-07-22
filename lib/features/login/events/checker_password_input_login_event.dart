import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';

class CheckerPasswordInputLoginEvent extends LoginBlocEvent {
  final String password;
  CheckerPasswordInputLoginEvent({required this.password});
}
