part of 'steps_bloc.dart';

abstract class StepsEvent extends Equatable {
  const StepsEvent();

  @override
  List<Object> get props => [];
}

class ChangeStepEvent extends StepsEvent {
  final int steps;

  const ChangeStepEvent({required this.steps});

  @override
  List<Object> get props => [steps];
}

class UserBuilderEvent extends StepsEvent {
  final UserBuilder userBuilder;

  const UserBuilderEvent({required this.userBuilder});

  @override
  List<Object> get props => [userBuilder];
}
