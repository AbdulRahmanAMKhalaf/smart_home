import 'dart:async';
import 'package:bloc/bloc.dart';
part 'indecators_event.dart';
part 'indecators_state.dart';

class IndecatorsBloc extends Bloc<IndecatorsEvent, IndecatorsState> {
  IndecatorsBloc() : super(IndecatorsInitialState()) {
    on<ChangeIndecoters>(_changeIndecators);
  }
  int index=0;
  int changeIndesing(int previous){
    index=previous;
    return index;
  }
  FutureOr<void> _changeIndecators(ChangeIndecoters event, Emitter<IndecatorsState> emit) {
   emit(ChangeIndecatorsLoading());
   changeIndesing(index);
    emit(ChangeIndecatorsSuccessfully());
  }
}
