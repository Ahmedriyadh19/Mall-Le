import 'package:mall_le/features/login/bloc/login_bloc_bloc.dart';

class CheckerPhoneNumberValidationEvent extends LoginBlocEvent {
  final String phoneNumber;
  CheckerPhoneNumberValidationEvent({required this.phoneNumber});
}
