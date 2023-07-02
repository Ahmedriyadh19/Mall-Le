import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';
import 'package:mall_le/features/login/events/login_password_event.dart';
import 'package:mall_le/features/login/states/login_password_obscured_state.dart';

class LoginPasswordInput extends StatelessWidget {
  const LoginPasswordInput({super.key});

  InputDecoration boxDecoration({required LoginBlocState state, required BuildContext context}) {
    return InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        labelText: 'Password',
        prefixIcon: const Icon(Icons.password_rounded, color: Colors.white),
        labelStyle: const TextStyle(color: Colors.white),
        hintStyle: const TextStyle(color: Colors.white),
        counterStyle: const TextStyle(color: Colors.purple),
        suffixIcon: IconButton(
          icon: Icon(
            (state is LoginPasswordObscuredState && state.isObscured) ? Icons.visibility_rounded : Icons.visibility_off_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            context.read<LoginBlocBloc>().add(LoginPasswordObscuredEvent(true));
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<LoginBlocBloc, LoginBlocState>(
        builder: (context, state) {
          return TextField(
            decoration: boxDecoration(state: state, context: context),
            style: const TextStyle(color: Colors.white),
            onChanged: (value) {},
          );
        },
      ),
    );
  }
}
