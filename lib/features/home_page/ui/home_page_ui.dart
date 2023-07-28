import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mall_le/features/home_page/bloc/home_page_bloc_bloc.dart';
import 'package:mall_le/features/home_page/widget/bottom_nav_bar.dart';
import 'package:mall_le/features/home_page/widget/drawer.dart';
import 'package:mall_le/features/home_page/widget/up_bar_widgets.dart';

class HomePageUI extends StatelessWidget {
  const HomePageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageBlocBloc(),
      child: Scaffold(
        appBar: AppBar(
          actions: const [MyUpBarContent()],
        ),
        body: const Center(
          child: Text('Home Page2'),
        ),
        bottomNavigationBar: const MyBottomNavBar(),
        drawer: const MyDrawer(),
      ),
    );
  }
}
