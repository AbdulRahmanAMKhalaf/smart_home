import 'dart:async';
import 'package:bloc/bloc.dart';
part 'indecators_event.dart';
part 'indecators_state.dart';

class IndecatorsBloc extends Bloc<IndecatorsEvent, IndecatorsState> {
  IndecatorsBloc() : super(IndecatorsInitialState()) {
    on<ChangeIndecoters>(_changeIndecators);
    on<DragItem>(_DragItem);
  }
  int index=0;
  int changeIndesing(int previous){
    index=previous;
    return index;
  }
  bool isDrag=false;
  FutureOr<void> _changeIndecators(ChangeIndecoters event, Emitter<IndecatorsState> emit) {
   emit(ChangeIndecatorsLoading());
   changeIndesing(index);
    emit(ChangeIndecatorsSuccessfully());
  }

  FutureOr<void> _DragItem(DragItem event, Emitter<IndecatorsState> emit) {
    emit(DaragLoading());
    isDrag=true;
    emit(DaragSuccessfully());
  }
}
