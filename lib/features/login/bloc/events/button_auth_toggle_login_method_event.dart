import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';

class ButtonAuthToggleLoginMethodEvent extends LoginBlocEvent {
  final int option;
  ButtonAuthToggleLoginMethodEvent({required this.option});
}
