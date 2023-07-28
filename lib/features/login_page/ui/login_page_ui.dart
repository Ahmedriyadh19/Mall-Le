import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glass/glass.dart';
import 'package:mall_le/features/login_page/bloc/login_bloc_bloc.dart';
import 'package:mall_le/features/login_page/widget/login_form_box.dart';
import 'package:mall_le/global_widget/background_image.dart';

class LoginPageUI extends StatelessWidget {
  const LoginPageUI({super.key});

  Align body() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 300,
        height: 400,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
        ),
        child: ListView(
          shrinkWrap: true,
          children: const [
            LoginFormBox(),
          ],
        ),
      ).asGlass(
        tintColor: Colors.transparent,
        clipBorderRadius: BorderRadius.circular(15.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBlocBloc(),
      child: Scaffold(
        body: BackgroundImage(
          child: body(),
        ),
      ),
    );
  }
}
