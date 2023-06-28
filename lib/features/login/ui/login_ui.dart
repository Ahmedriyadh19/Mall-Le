import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:mall_le/features/login/widget/login_form.dart';
import 'package:mall_le/global_widget/background_image.dart';

class LoginUi extends StatelessWidget {
  const LoginUi({super.key});

  Container logoIconBox({required Size size}) {
    return Container(
      height: size.height * 0.2,
      width: size.width * 0.7,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/logo-no-color.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  SizedBox loginFormBox({required Size size}) {
    return SizedBox(
      height: size.height * 0.25,
      width: size.width * 0.7,
      child: const LoginForm(),
    );
  }

  ClipRRect box({required Size size}) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
        ),
        child: Column(
          children: [
            logoIconBox(size: size),
            loginFormBox(size: size),
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
    return Scaffold(
      body: BackgroundImage(
        child: body(size: size),
      ),
    );
  }
}
