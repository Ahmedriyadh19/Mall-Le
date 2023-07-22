import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';

class CheckerOTPLoginEvent extends LoginBlocEvent {
  final int otp;
  CheckerOTPLoginEvent({required this.otp});
}
