import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';

class InputValidationEvent extends LoginBlocEvent{
  final String phoneNumber;
  InputValidationEvent(this.phoneNumber);
  
}