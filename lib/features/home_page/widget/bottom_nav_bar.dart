import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mall_le/features/home_page/bloc/events/bottom_nav_bar_event.dart';
import 'package:mall_le/features/home_page/bloc/home_page_bloc_bloc.dart';
import 'package:mall_le/features/home_page/bloc/states/home_page_states_change.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageBlocBloc, HomePageBlocState >(
      builder: (context, state) {
        return SalomonBottomBar(            
          currentIndex: state is HomepageStatesChange ? state.index : 0,
          onTap: (i) => context.read<HomePageBlocBloc>().add(BottomNavBarEvent(i)),
          curve: Curves.easeOutQuart,
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: Colors.deepOrangeAccent,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.search),
              title: const Text("Search"),
              selectedColor: Colors.deepOrangeAccent,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.favorite_rounded),
              title: const Text("Likes"),
              selectedColor: Colors.deepOrangeAccent,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Profile"),
              selectedColor: Colors.deepOrangeAccent,
            ),
          ],
        );
      },
    );
  }
}


