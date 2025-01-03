/*
COUNTER VIEW: responsible for UI

- Bloc builder

 */

import 'package:bloc_st_ma_training1/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterCubit, int>(
          builder: (context, state){
            return Center(
              child: Text(
                state.toString(),
                style: TextStyle(
                  fontSize: 50
                ),
              ),
            );
          }
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          //for increment
          FloatingActionButton(
              onPressed: () => context.read<CounterCubit>().increment(),
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10),
          //for decrement
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().decrement(),
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

