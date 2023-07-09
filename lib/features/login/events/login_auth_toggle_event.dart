import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';

class LoginAuthToggleEvent extends LoginBlocEvent {
  final int option;
  LoginAuthToggleEvent({required this.option});
}
