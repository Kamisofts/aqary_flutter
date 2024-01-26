part of 'api_call_bloc.dart';

abstract class ApiCallEvent extends Equatable {
  const ApiCallEvent();

  @override
  List<Object> get props => [];
}

class FetchDataEvent extends ApiCallEvent{}
