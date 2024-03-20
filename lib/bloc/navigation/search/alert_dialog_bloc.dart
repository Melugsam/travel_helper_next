import 'package:bloc/bloc.dart';

part 'alert_dialog_event.dart';
part 'alert_dialog_state.dart';

class AlertDialogBloc extends Bloc<AlertDialogEvent, AlertDialogState> {
  List<String> datesValue =["",""];
  AlertDialogBloc() : super(AlertDialogInitial()) {
    on<ChangeDateValues>((event, emit) {
      print(datesValue);
    });
  }
}
