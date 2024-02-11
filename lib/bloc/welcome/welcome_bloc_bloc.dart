import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'welcome_bloc_event.dart';
part 'welcome_bloc_state.dart';

class WelcomeBlocBloc extends Bloc<WelcomeBlocEvent, WelcomeBlocState> {
  WelcomeBlocBloc() : super(WelcomeBlocInitial()) {
    on<WelcomeBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
