import 'package:flutter/material.dart';
import 'package:mall_le/features/login_page/ui/login_page_ui.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.35,
        color: Theme.of(context).colorScheme.primary,
        child: Stack(children: [
          const Center(
            child: Text(
              'Mall Le',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              icon: const Icon(Icons.edit, color: Colors.white,),
              onPressed: () {},
            ),
          )
        ]),
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
