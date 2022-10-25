part of 'data_bloc.dart';

abstract class DataEvent extends Equatable {
  const DataEvent();
}

class GetTokenEvent extends DataEvent{
@override
  List<Object> get props => [];  
}

class LoadHomedataEvent extends DataEvent{
@override
  List<Object> get props => [];
}