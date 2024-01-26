part of 'painters_bloc.dart';

abstract class PaintersEvent extends Equatable{
  const PaintersEvent();

  @override
  List<Object> get props => [];
}

class ChangePainterEvent extends PaintersEvent {}

