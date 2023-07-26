import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';

class VisibilityPasswordOptionEvent extends LoginBlocEvent {
  final bool isObscured;
  VisibilityPasswordOptionEvent({required this.isObscured});
}
