import 'package:flutter/material.dart';
import 'package:mall_le/features/home_page/ui/home_page_ui.dart';

class LoginSubmitButton extends StatelessWidget {
  const LoginSubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton(
        child: const Icon(
          Icons.arrow_forward_rounded,
        ),
        onPressed: () {
         // context.read<LoginBlocBloc>().add(ButtonLoginProcessEvent());
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => const HomePageUI()),
          );
        },
      ),
    );
  }
}
