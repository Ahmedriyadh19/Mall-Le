import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glass/glass.dart';
import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';
import 'package:mall_le/features/login/widget/login_form.dart';
import 'package:mall_le/global_widget/background_image.dart';
import 'package:mall_le/global_widget/logo_display.dart';

class LoginUi extends StatelessWidget {
  const LoginUi({super.key});

  ClipRRect box({required Size size}) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
        ),
        child: const Column(
          children: [
            LogoDisplayBox(),
            LoginForm(),
          ],
        )).asGlass(
      tintColor: Colors.transparent,
      clipBorderRadius: BorderRadius.circular(15.0),
    );
  }

  Column body({required Size size}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        box(size: size),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => LoginBlocBloc(),
      child: Scaffold(
        body: BackgroundImage(
          child: body(size: size),
        ),
      ),
    );
  }
}
