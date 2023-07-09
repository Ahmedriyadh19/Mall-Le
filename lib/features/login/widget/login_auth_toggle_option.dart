import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';
import 'package:mall_le/features/login/events/login_auth_toggle_event.dart';
import 'package:mall_le/features/login/states/login_states_changes.dart';

class AuthToggleOption extends StatelessWidget {
  const AuthToggleOption({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBlocBloc, LoginBlocState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(12),
          child: FlutterToggleTab(
            width: 65,
            borderRadius: 10,
            selectedIndex: state is LoginStateChange ? (state.option) : 0,
            selectedTextStyle: const TextStyle(
              color: Colors.white,
            ),
            unSelectedTextStyle: const TextStyle(
              color: Colors.grey,
            ),
            labels: const [
              'OTP SMS',
              'Password',
            ],
            icons: const [
              Icons.sms_rounded,
              Icons.password_rounded,
            ],
            selectedLabelIndex: (index) {
              context.read<LoginBlocBloc>().add(LoginAuthToggleEvent(option: index));
            },
            marginSelected: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
          ),
        );
      },
    );
  }
}
