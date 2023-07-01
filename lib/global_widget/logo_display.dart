import 'package:flutter/material.dart';

class LogoDisplayBox extends StatelessWidget {
  const LogoDisplayBox({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.25,
      width: size.width * 0.7,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/background/logo-no-color.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
