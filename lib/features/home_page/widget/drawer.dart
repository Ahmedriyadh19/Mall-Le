import 'package:flutter/material.dart';
import 'package:mall_le/features/login_page/ui/login_page_ui.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(children: [
      const UserAccountsDrawerHeader(
        accountName: Text('User Name'),
        accountEmail: Text('Email'),
        otherAccountsPictures: [],
      ),
      const ListTile(
        leading: Icon(Icons.home),
        title: Text('Home'),
        onTap: null,
      ),
      const Spacer(),
      const Divider(),
      IconButton(
        onPressed: () {
           Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => const LoginPageUI()),
          );
        },
        icon: const Icon(Icons.logout_rounded),
      )
    ]));
  }
}
