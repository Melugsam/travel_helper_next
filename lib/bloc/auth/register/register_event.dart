part of 'register_bloc.dart';

abstract class RegisterEvent {}

class TryRegisterEvent extends RegisterEvent{
  final String email;
  final String password;
  final String repeatPassword;
  TryRegisterEvent({required this.email, required this.password, required this.repeatPassword});
}