import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'register_bloc_event.dart';
part 'register_bloc_state.dart';

class RegisterBlocBloc extends Bloc<RegisterBlocEvent, RegisterBlocState> {
  RegisterBlocBloc() : super(RegisterBlocInitial()) {
    on<RegisterBlocEvent>((event, emit) {
      
    });
  }
}
