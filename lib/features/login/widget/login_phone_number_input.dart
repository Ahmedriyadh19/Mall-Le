import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';

class LoginPhoneNumberInput extends StatelessWidget {
  const LoginPhoneNumberInput({super.key});
  InputDecoration boxDecoration() {
    return const InputDecoration(
      border: InputBorder.none,
      //enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
      focusedBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      prefixIcon: Icon(Icons.phone_android_rounded, color: Colors.white),
      labelStyle: TextStyle(color: Colors.white),
      hintStyle: TextStyle(color: Colors.grey),
      counterStyle: TextStyle(color: Colors.purple),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBlocBloc, LoginBlocState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: IntlPhoneField(
            decoration: boxDecoration(),
            initialCountryCode: 'YE',
            dropdownTextStyle: const TextStyle(color: Colors.white),
            dropdownIcon: const Icon(Icons.arrow_drop_down, color: Colors.white),
            style: const TextStyle(color: Colors.white),
           // countries: myCountries
          ),
        );
      },
    );
  }
}
