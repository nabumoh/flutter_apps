import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:learn_course/layout/home_layout.dart';
// import 'package:learn_course/modules/bmi/bmiCalculator_screen.dart';
// import 'package:learn_course/modules/bmi/bmiResult_screen.dart';
import 'package:learn_course/modules/counter/counter_screen_bloc.dart';
import 'package:learn_course/shared/bloc_observer.dart';
// import 'package:learn_course/modules/login/login_screen.dart';
// import 'package:learn_course/modules/users/users_screen.dart';
// import 'modules/massenger/massenger_screen.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}
