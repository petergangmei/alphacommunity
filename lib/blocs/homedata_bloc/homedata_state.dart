part of 'homedata_bloc.dart';

abstract class HomedataState extends Equatable {
  const HomedataState();
  
  @override
  List<Object> get props => [];
}

class HomedataInitial extends HomedataState {}

class HomedataLoaded extends HomedataState {}
