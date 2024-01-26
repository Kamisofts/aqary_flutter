import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';

part 'painters_event.dart';

part 'painters_state.dart';

class PaintersBloc extends Bloc<PaintersEvent, PaintersState> {
  PaintersBloc()
      : super(PaintersInitial(isInitial: ValueNotifier<bool>(true), ini: true)) {
    on<PaintersEvent>((event, emit) {});
    on<ChangePainterEvent>((event, emit) {
      if(state.ini){
        emit(PaintersInitial(isInitial: ValueNotifier<bool>(false), ini: false));

      }else{
        emit(PaintersInitial(isInitial: ValueNotifier<bool>(true), ini: true));

      }
       });

  }
}
