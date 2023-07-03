import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';

class InputPhoneNumberValidationEvent extends LoginBlocEvent {
  final String phoneNumber;
  InputPhoneNumberValidationEvent({required this.phoneNumber});
}
