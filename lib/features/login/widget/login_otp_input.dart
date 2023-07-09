import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';
import 'package:mall_le/features/login/events/login_otp_complete_event.dart';
import 'package:pinput/pinput.dart';

class LoginOtpInput extends StatelessWidget {
  const LoginOtpInput({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Pinput(
          length: 5,
          onCompleted: (value) {
            context.read<LoginBlocBloc>().add(LoginOtpCompleteEvent(otp: int.parse(value)));
          },
        ),
      ),
    );
  }
}
