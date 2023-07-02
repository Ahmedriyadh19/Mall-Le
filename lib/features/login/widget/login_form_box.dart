import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';
import 'package:mall_le/features/login/states/auth_toggle_state.dart';
import 'package:mall_le/features/login/states/complete_state.dart';
import 'package:mall_le/features/login/states/error_state.dart';
import 'package:mall_le/features/login/widget/login_auth_toggle_option.dart';
import 'package:mall_le/features/login/widget/login_password_input.dart';
import 'package:mall_le/features/login/widget/login_submit_button.dart';
import 'package:mall_le/features/login/widget/login_phone_number_input.dart';

class LoginFormBox extends StatelessWidget {
  const LoginFormBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      const LoginPhoneNumberInput(),
      BlocBuilder<LoginBlocBloc, LoginBlocState>(
        builder: (context, state) {
          if (state is LoginCompleteState) {
            return Text(state.message);
          } else if (state is LoginErrorState) {
            return Text(state.message);
          } else if (state is AuthSelectedState && state.option == 1) {
            return const LoginPasswordInput();
          }
          return Container();
        },
      ),
      const AuthToggleOption(),
      const LoginSubmitButton(),
    ]);
  }
}
