import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';
import 'package:mall_le/features/login/events/button_login_process_event.dart';

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
          context.read<LoginBlocBloc>().add(ButtonLoginProcessEvent());
        },
      ),
    );
  }
}
