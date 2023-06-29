import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';
import 'package:mall_le/features/login/states/complete_state.dart';
import 'package:mall_le/features/login/states/error_state.dart';
import 'package:mall_le/features/login/widget/submit_button.dart';
import 'package:mall_le/features/login/widget/text_input.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        const TextInput(),
        BlocBuilder<LoginBlocBloc, LoginBlocState>(
          builder: (context, state) {
            if (state is LoginCompleteState) {
              return Text(state.message);
            } else if (state is LoginErrorState) {
              return Text(state.message);
            } else {
              return Container();
            }
          },
        ),
        const SubmitButton(),
      ]),
    );
  }
}
