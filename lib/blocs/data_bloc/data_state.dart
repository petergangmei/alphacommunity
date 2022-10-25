part of 'data_bloc.dart';

abstract class DataState extends Equatable {
  // const DataState();
}

class UserLoadingState extends DataState {
  @override
  List<Object> get props => [];
}

class UserLoadedState extends DataState {
  @override
  List<Object> get props => [];
}


// get state -----
class LoadingHomeDataState extends DataState {
  @override
  List<Object> get props => [];
}

class LoadedHomeDataState extends DataState {
  @override
  List<Object> get props => [];
}

class LoadedHomeDataErrorState extends DataState {
  @override
  List<Object> get props => [];
}



// get token ----
class LoadingTokenState extends DataState {
  @override
  List<Object> get props => [];
}

class LoadedTokenState extends DataState {
  @override
  List<Object> get props => [];
}

class LoadedTokenErrorState extends DataState {
  @override
  List<Object> get props => [];
}
