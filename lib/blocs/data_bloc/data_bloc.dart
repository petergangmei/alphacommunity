import 'package:alphacommunity/data/respository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:alphacommunity/global.dart' as global;

part 'data_event.dart';
part 'data_state.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  final MainRepository _mainRepository;

  DataBloc(this._mainRepository) : super(UserLoadedState()) {
    on<GetTokenEvent>((event, emit) async{
      emit(LoadingTokenState());
      try{
        final token = await _mainRepository.getToken();
        print('-----token result: ${token}-----');
        emit(LoadedTokenState());
        global.firstStart = false;

      }catch(e){
        emit(LoadedTokenErrorState());
      }
      
    });

    on<LoadHomedataEvent>(((event, emit) async{
      print('----from bloc----');
      emit(LoadingHomeDataState());
      try{
        final data = await _mainRepository.getHomeData();
        print('--- bloc data: ${data}');
        emit(LoadedHomeDataState());

      }catch(e){
        print('---- bloc error: ${e.toString()} ------');
        emit(LoadedHomeDataErrorState());

      }
    }));
  }
}
