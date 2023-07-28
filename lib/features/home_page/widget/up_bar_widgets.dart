import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:mall_le/features/home_page/widget/badges.dart';

class MyUpBarContent extends StatelessWidget {
  const MyUpBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
        MyBadges(
          count: faker.randomGenerator.integer(50, min: -50),
          icon: Icons.favorite_outlined,
          fn: () {},
        ),
        MyBadges(
          count: faker.randomGenerator.integer(50, min: -50),
          icon: Icons.shopping_cart,
          fn: () {},
        ),
        const SizedBox(width: 25),
    ],);
  }
}