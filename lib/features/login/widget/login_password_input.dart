import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';
import 'package:mall_le/features/login/events/login_password_obscured_event.dart';
import 'package:mall_le/features/login/events/login_password_input_valid_event.dart';
import 'package:mall_le/features/login/states/login_states_changes.dart';

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
        hintStyle: const TextStyle(color: Colors.grey),
        counterStyle: const TextStyle(color: Colors.purple),
        hintText: 'Enter your password',
        suffixIcon: IconButton(
          icon: Icon(
            (state is LoginStateChange && state.isObscured) ? Icons.visibility_rounded : Icons.visibility_off_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            state is LoginStateChange
                ? context.read<LoginBlocBloc>().add(LoginPasswordObscuredEvent(isObscured: !state.isObscured))
                : context.read<LoginBlocBloc>().add(LoginPasswordObscuredEvent(isObscured: true));
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: BlocBuilder<LoginBlocBloc, LoginBlocState>(
          builder: (context, state) {
            return TextField(
              decoration: boxDecoration(state: state, context: context),
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
              style: const TextStyle(color: Colors.white),
              obscureText: state is LoginStateChange ? state.isObscured : true,
              onChanged: (value) {
                context.read<LoginBlocBloc>().add(PasswordInputValidationEvent(password: value));
              },
            );
          },
        ),
      ),
    );
  }
}
