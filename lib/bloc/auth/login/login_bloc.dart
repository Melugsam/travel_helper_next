import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  LoginBloc() : super(LoginInitial()) {
    on<TryLoginEvent>((event, emit) async {
      emit(WaitingLoginState());
      try {
        await _auth.signInWithEmailAndPassword(
            email: event.mail, password: event.password);
        emit(SuccessLoginState());
      } catch (ex) {
        emit(ErrorLoginState());
        debugPrint(ex.toString());
      }
    });
  }
}
