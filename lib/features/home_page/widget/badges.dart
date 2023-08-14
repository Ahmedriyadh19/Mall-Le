// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyBadges extends StatelessWidget {
  final int count;
  final IconData icon;
  final Function fn;

  const MyBadges({
    Key? key,
    required this.count,
    required this.icon,
    required this.fn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Badge(
      label: Text(count < 9 ? '$count' : '9+'),
      isLabelVisible: count > 0 ? true : false,
      child: IconButton(
        onPressed: () {
          fn();
        },
        icon: Icon(icon),
      ),
    );
  }
}
