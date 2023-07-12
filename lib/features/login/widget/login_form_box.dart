import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';
import 'package:mall_le/features/login/states/login_states_changes.dart';
import 'package:mall_le/features/login/widget/login_auth_toggle_option.dart';
import 'package:mall_le/features/login/widget/login_otp_input.dart';
import 'package:mall_le/features/login/widget/login_password_input.dart';
import 'package:mall_le/features/login/widget/login_request_otp_button.dart';
import 'package:mall_le/features/login/widget/login_phone_number_input.dart';
import 'package:mall_le/features/login/widget/login_submit_button.dart';

class LoginFormBox extends StatelessWidget {
  const LoginFormBox({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBlocBloc, LoginBlocState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AuthToggleOption(),
            const LoginPhoneNumberInput(),
            state is LoginStateChange && state.option == 1 //option 1 is password+  option 0 is otp
                ? const LoginPasswordInput()
                : state is LoginStateChange && state.isSend == true // is true when otp is send
                    ? const LoginOtpInput()
                    : const LoginRequestOtpButton(),
            if ((state is LoginStateChange && state.option == 1) || (state is LoginStateChange && state.isSend == true)) const LoginSubmitButton(),
          ],
        );
      },
    );
  }
}
