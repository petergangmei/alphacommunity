import 'package:alphacommunity/data/respository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

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

      }catch(e){
        emit(LoadedTokenErrorState());
      }
      
    });
  }
}
