part of 'painters_bloc.dart';

abstract class PaintersState extends Equatable {
  final ValueNotifier<bool> isInitial;

  final bool ini;
   // final AnimationController? controller;

  const PaintersState(
      {required this.ini,  required this.isInitial});

  @override
  List<Object> get props => [isInitial];
}

class PaintersInitial extends PaintersState {
  const PaintersInitial( {required super.isInitial, required super.ini});
}

class PaintersLast extends PaintersState {
  const PaintersLast({required super.isInitial, required super.ini});
}
