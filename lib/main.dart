import 'package:flutter/material.dart';
import 'package:mall_le/features/home_page/ui/home_page_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent, secondary: Colors.purple),
        useMaterial3: true,
      ),
      home: const HomePageUI(),
    );
  }
}
