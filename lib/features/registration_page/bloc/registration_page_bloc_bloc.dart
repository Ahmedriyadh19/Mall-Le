import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
part 'registration_page_bloc_event.dart';
part 'registration_page_bloc_state.dart';

class RegistrationPageBlocBloc extends Bloc<RegistrationPageBlocEvent, RegistrationPageBlocState> {
  RegistrationPageBlocBloc() : super(RegistrationPageBlocInitial()) {
    on<RegistrationPageBlocEvent>((event, emit) {
     
    });
  }
}
