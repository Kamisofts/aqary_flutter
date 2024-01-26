part of 'steps_bloc.dart';

abstract class StepsState extends Equatable {
  final int steps;
  final UserBuilder userBuilder;

  const StepsState({required this.userBuilder, required this.steps});

  @override
  List<Object> get props => [steps,userBuilder];
}

class StepsInitial extends StepsState {
  const StepsInitial({required super.steps, required super.userBuilder});
}
