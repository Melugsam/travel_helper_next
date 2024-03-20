part of 'alert_dialog_bloc.dart';
abstract class AlertDialogEvent {}
class ChangeDateValues extends AlertDialogEvent{
  final String value;
  final int position;
  ChangeDateValues({required this.value, required this.position});
}

