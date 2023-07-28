import 'package:mall_le/features/home_page/bloc/home_page_bloc_bloc.dart';

class BottomNavBarEvent extends HomePageBlocEvent {
  final int index;

  BottomNavBarEvent(this.index); 
}