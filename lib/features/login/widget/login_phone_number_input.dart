import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mall_le/features/login/bloc/events/checker_phone_number_input_valid_event.dart';
import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';
import 'package:mall_le/features/login/widget/my_countries.dart';

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
      counterStyle: TextStyle(color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBlocBloc, LoginBlocState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey),
          ),
          child: IntlPhoneField(
            decoration: boxDecoration(),
            countries: sortedCountries,
            initialCountryCode: 'YE',
            dropdownTextStyle: const TextStyle(color: Colors.white, fontSize: 15),
            showDropdownIcon: false,
            dropdownIcon: const Icon(Icons.arrow_drop_down, color: Colors.white),
            style: const TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            initialValue: '733273422',
            textAlignVertical: TextAlignVertical.center,
            onChanged: (value) {
              try {
                if (value.isValidNumber()) {
                  context.read<LoginBlocBloc>().add(CheckerPhoneNumberValidationEvent(phoneNumber: value.completeNumber));
                }
              } catch (_) {}
            },
          ),
        );
      },
    );
  }
}
