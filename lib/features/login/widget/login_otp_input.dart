import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class LoginOtpInput extends StatelessWidget {
  const LoginOtpInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Pinput(
        length: 5,
        // androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsRetrieverApi,
      ),
    );
  }
}