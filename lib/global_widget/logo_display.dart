import 'package:flutter/material.dart';

class LogoDisplayBox extends StatelessWidget {
  const LogoDisplayBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/background/logo-no-color.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
