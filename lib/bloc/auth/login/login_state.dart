part of 'login_bloc.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}
class WaitingLoginState extends LoginState{}
class SuccessLoginState extends LoginState{}
class ErrorLoginState extends LoginState{}