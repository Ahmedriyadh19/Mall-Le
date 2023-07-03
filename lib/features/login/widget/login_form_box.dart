import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';
import 'package:mall_le/features/login/states/login_states_changes.dart';
import 'package:mall_le/features/login/widget/login_auth_toggle_option.dart';
import 'package:mall_le/features/login/widget/login_otp_input.dart';
import 'package:mall_le/features/login/widget/login_password_input.dart';
import 'package:mall_le/features/login/widget/login_submit_button.dart';
import 'package:mall_le/features/login/widget/login_phone_number_input.dart';

class LoginFormBox extends StatelessWidget {
  const LoginFormBox({super.key});

  Divider div() {
    return const Divider(
      color: Colors.white,
      endIndent: 50.0,
      indent: 50.0,
      thickness: 0.5,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBlocBloc, LoginBlocState>(
      builder: (context, state) {
        return Column(
          children: [
            const LoginPhoneNumberInput(),
            div(),
            state is LoginStateChange && state.option == 1 ? const LoginPasswordInput() : const LoginOtpInput(),
            div(),
            const AuthToggleOption(),
            const LoginSubmitButton(),
          ],
        );
      },
    );
  }
}
