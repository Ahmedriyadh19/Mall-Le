import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';
import 'package:mall_le/features/login/events/checker_otp_login_event.dart';
import 'package:pinput/pinput.dart';

class LoginOtpInput extends StatelessWidget {
  const LoginOtpInput({super.key});

 PinTheme _theme() {
    return PinTheme(
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(10),
        //  border: Border.all(color: Colors.grey),
      ),
      width: 50,
      textStyle: const TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Pinput(
          defaultPinTheme: _theme(),
          length: 6,
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          onCompleted: (value) {
            context.read<LoginBlocBloc>().add(CheckerOTPLoginEvent(otp: int.parse(value)));
          },
        ),
      ),
    );
  }
}
