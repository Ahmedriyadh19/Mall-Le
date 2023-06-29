import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mall_le/features/register/bloc/register_bloc_bloc.dart';

class RegisterUi extends StatelessWidget {
  const RegisterUi({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterBlocBloc(),
      child: Container(),
    );
  }
}
