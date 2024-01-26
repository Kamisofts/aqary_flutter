part of 'api_call_bloc.dart';

abstract class ApiCallState extends Equatable {
  const ApiCallState();

  @override
  List<Object> get props => [];
}

class ApiCallInitial extends ApiCallState {}

class LoadingState extends ApiCallState {}

class SuccessState extends ApiCallState {
  final String data;

  const SuccessState(this.data);

  @override
  List<Object> get props => [data];
}

class ErrorState extends ApiCallState {
  final String error;

  const ErrorState(this.error);

  @override
  List<Object> get props => [error];
}
