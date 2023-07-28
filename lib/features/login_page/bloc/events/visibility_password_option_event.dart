import 'package:mall_le/features/login_page/bloc/login_bloc_bloc.dart';

class VisibilityPasswordOptionEvent extends LoginBlocEvent {
  final bool isObscured;
  VisibilityPasswordOptionEvent({required this.isObscured});
}
