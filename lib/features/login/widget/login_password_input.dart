import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mall_le/features/login/bloc/events/checker_password_input_login_event.dart';
import 'package:mall_le/features/login/bloc/events/visibility_password_option_event.dart';
import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';
import 'package:mall_le/features/login/bloc/states/login_states_changes.dart';

class LoginPasswordInput extends StatelessWidget {
  const LoginPasswordInput({super.key});

  InputDecoration boxDecoration({required LoginBlocState state, required BuildContext context}) {
    return InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        labelText: 'Password',
        prefixIcon: const Icon(Icons.lock_person_rounded, color: Colors.white),
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
                ? context.read<LoginBlocBloc>().add(VisibilityPasswordOptionEvent(isObscured: !state.isObscured))
                : context.read<LoginBlocBloc>().add(VisibilityPasswordOptionEvent(isObscured: true));
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child: BlocBuilder<LoginBlocBloc, LoginBlocState>(
        builder: (context, state) {
          return TextField(
            decoration: boxDecoration(state: state, context: context),
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            obscureText: state is LoginStateChange ? state.isObscured : true,
            style: const TextStyle(color: Colors.white),
            onChanged: (value) {
              context.read<LoginBlocBloc>().add(CheckerPasswordInputLoginEvent(password: value));
            },
          );
        },
      ),
    );
  }
}
