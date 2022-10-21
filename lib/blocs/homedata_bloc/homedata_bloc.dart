import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'homedata_event.dart';
part 'homedata_state.dart';

class HomedataBloc extends Bloc<HomedataEvent, HomedataState> {
  HomedataBloc() : super(HomedataInitial()) {
    on<GetToken>(((event, emit) {
      print("printing get token ----");
    }));
    on<HomedataEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
