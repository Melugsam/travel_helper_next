import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'register_event.dart';

part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  RegisterBloc() : super(RegisterInitial()) {
    on<TryRegisterEvent>((event, emit) async {
      emit(WaitingRegisterState());
      if (!checkPassword(event.password, event.repeatPassword)) {
        emit(ErrorPasswordMatchState());
      }
      else if (event.password.length<6){
        emit(ErrorPasswordLengthState());
      }
      else if (!isValidEmail(event.email)){
        emit(ErrorEmailState());
      }
      else {
        try {
          await _auth.createUserWithEmailAndPassword(email: event.email, password: event.password);
          emit(SuccessRegisterState());
        } catch (ex) {
          emit(ErrorRegisterState());
          debugPrint(ex.toString());
        }
      }
    });
  }

  bool checkPassword(String password, String repeatPassword) =>
      password == repeatPassword;

  bool isValidEmail(String email) => RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);

}
