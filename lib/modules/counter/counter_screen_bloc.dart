import 'package:flutter/material.dart';
// import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_course/modules/counter/cubit/cubit.dart';
import 'package:learn_course/modules/counter/cubit/states.dart';

/*
* State less - contains one class that provide widget
* State full - two classes
* 1. first class provides widget
* 2. second class provides state from this widget
* */

class CounterScreenBloc extends StatelessWidget {
  CounterScreenBloc({Key? key}) : super(key: key);
  /*
  * 1. constructor
  * 2. init state
  * 3. build
  * */


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {
          if (state is CounterPlusState) print('Plus State ${state.counter}');
          if (state is CounterMinusState) print('Minus State ${state.counter}');
        },
        builder: (BuildContext context, CounterStates state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Counter',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      CounterCubit.get(context).minus();
                      // logInfo(counter);
                    },
                    child: const Text(
                      'Minus',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      '${CounterCubit.get(context).counter}',
                      style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 30.0),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      CounterCubit.get(context).plus();
                      // logInfo(counter);
                    },
                    child: const Text(
                      'Plus',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
