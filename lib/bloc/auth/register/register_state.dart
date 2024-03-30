part of 'register_bloc.dart';

abstract class RegisterState {}

class RegisterInitial extends RegisterState {}
class WaitingRegisterState extends RegisterState{}
class SuccessRegisterState extends RegisterState{}
class ErrorRegisterState extends RegisterState{}
class ErrorPasswordMatchState extends RegisterState{}
class ErrorPasswordLengthState extends RegisterState{}
class ErrorEmailState extends RegisterState{}
