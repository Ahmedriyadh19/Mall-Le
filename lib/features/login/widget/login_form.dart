import 'package:flutter/material.dart';
import 'package:mall_le/features/login/widget/submit_button.dart';
import 'package:mall_le/features/login/widget/text_input.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        TextInput(controller: controller),
        const SubmitButton(),
      ]),
    );
  }
}
