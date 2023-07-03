import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';
import 'package:mall_le/features/login/events/phone_number_input_valid_event.dart';

class LoginPhoneNumberInput extends StatelessWidget {
  const LoginPhoneNumberInput({super.key});
  InputDecoration boxDecoration() {
    return const InputDecoration(
      border: InputBorder.none,
      //enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
      focusedBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      labelText: 'Phone Number',
      hintText: 'Enter your phone number',
      prefixIcon: Icon(Icons.phone_android_rounded, color: Colors.white),
      labelStyle: TextStyle(color: Colors.white),
      hintStyle: TextStyle(color: Colors.grey),
      counterStyle: TextStyle(color: Colors.purple),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<LoginBlocBloc, LoginBlocState>(
        builder: (context, state) {
          return TextField(
            decoration: boxDecoration(),
            keyboardType: TextInputType.phone,
            style: const TextStyle(color: Colors.white),
            onChanged: (value) {
              context.read<LoginBlocBloc>().add(InputPhoneNumberValidationEvent(phoneNumber: value));
            },
          );
        },
      ),
    );
  }
}
