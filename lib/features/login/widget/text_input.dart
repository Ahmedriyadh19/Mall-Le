import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';
import 'package:mall_le/features/login/events/input_valid_event.dart';

class TextInput extends StatelessWidget {
  const TextInput({super.key});
  InputDecoration boxDecoration() {
    return const InputDecoration(
      // border: InputBorder.none,
      // focusedBorder: InputBorder.none,
      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      labelText: 'Phone Number',
      prefixIcon: Icon(Icons.phone_android_rounded, color: Colors.white),
      labelStyle: TextStyle(color: Colors.white),
      hintStyle: TextStyle(color: Colors.white),
      counterStyle: TextStyle(color: Colors.purple),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: BlocBuilder<LoginBlocBloc, LoginBlocState>(
        builder: (context, state) {
          return TextField(
            decoration: boxDecoration(),
            keyboardType: TextInputType.phone,
            style: const TextStyle(color: Colors.white),
            onChanged: (value) {
              context.read<LoginBlocBloc>().add(InputValidationEvent(value));
            },
          );
        },
      ),
    );
  }
}
