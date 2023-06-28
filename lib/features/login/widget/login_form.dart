import 'package:flutter/material.dart';
import 'package:mall_le/features/login/widget/submit_button.dart';
import 'package:mall_le/features/login/widget/text_input.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        TextInput(),
        SubmitButton(),
      ]),
    );
  }
}
