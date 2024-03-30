part of 'login_bloc.dart';

abstract class LoginEvent {}
class TryLoginEvent extends LoginEvent{
  final String mail;
  final String password;
  TryLoginEvent({required this.mail, required this.password});
}