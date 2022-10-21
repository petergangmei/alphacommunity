part of 'homedata_bloc.dart';

abstract class HomedataEvent extends Equatable {
  const HomedataEvent();

 
}


class GetToken extends HomedataEvent{
 @override
  List<Object> get props => [];
}