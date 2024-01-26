import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/person_model.dart';

part 'steps_event.dart';

part 'steps_state.dart';

class StepsBloc extends Bloc<StepsEvent, StepsState> {
  StepsBloc() : super( StepsInitial(steps: 1, userBuilder: UserBuilder())) {
    on<StepsEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<ChangeStepEvent>((event, emit) async {
      emit(StepsInitial(steps: event.steps, userBuilder: state.userBuilder));
    });
    on<UserBuilderEvent>((event, emit) async {
      emit(StepsInitial(steps: state.steps, userBuilder: event.userBuilder));
    });
  }
}
