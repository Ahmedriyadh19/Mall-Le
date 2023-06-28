import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton(
        child: const Icon(
          Icons.arrow_forward_rounded,
        ),
        onPressed: () {},
      ),
    );
  }
}
