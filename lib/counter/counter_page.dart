/*

COUNTER PAGE:  responsible for providing CounterCubit to CounterView(UI)

- use Bloc Provider


 */

import 'package:bloc_st_ma_training1/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_view.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CounterCubit(0),
      child: BlocListener<CounterCubit, int>(
          listener: (context, state){

            if(state == 10){
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Text("10 reached"),
                  ),
              );
            }
          },
          child: CounterView(),
      ),
    );
  }
}
