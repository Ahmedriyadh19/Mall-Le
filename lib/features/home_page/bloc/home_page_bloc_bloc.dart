import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:mall_le/features/home_page/bloc/events/bottom_nav_bar_event.dart';
import 'package:mall_le/features/home_page/bloc/states/home_page_states_change.dart';

part 'home_page_bloc_event.dart';
part 'home_page_bloc_state.dart';

class HomePageBlocBloc extends Bloc<HomePageBlocEvent, HomePageBlocState> {
  HomePageBlocBloc() : super(HomePageBlocInitial()) {
    on<HomePageBlocEvent>((event, emit) {
      if (event is BottomNavBarEvent) {
        emit(HomepageStatesChange(index: event.index));
      }
    });
  }
}
