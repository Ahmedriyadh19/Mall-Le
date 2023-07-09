import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';

class LoginOtpCompleteEvent extends LoginBlocEvent {
  final int otp;

  LoginOtpCompleteEvent({required this.otp});
}
