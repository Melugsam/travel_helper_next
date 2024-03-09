import 'package:bloc/bloc.dart';
import 'package:latlong2/latlong.dart';

part 'find_info_event.dart';

part 'find_info_state.dart';

class FindInfoBloc extends Bloc<FindInfoEvent, FindInfoState> {
  FindInfoBloc() : super(FindInfoInitial()) {
    on<FindInfoEvent>((event, emit) async {
      if (event is FindButtonEvent) {
        print("Отправляю запросы");
      }
    });
  }
}
