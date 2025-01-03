/*
CUBIT: Simply version of Bloc for east st ma

counter cubit
 */
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int>{

  //constructor to get initial state
  CounterCubit(super.initialState);

  // increment
void increment() => emit(state + 1);

//decrement
void decrement() => emit(state - 1);

//on state change doing something
@override
  void onChange(Change<int> change) {
    super.onChange(change);

    print(change);
  }
}