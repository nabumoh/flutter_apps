import 'package:flutter/material.dart';

class BmiResults_Screen extends StatelessWidget {
  // const BmiResults_Screen({Key? key}) : super(key: key);

  final int result;
  final bool isMale;
  final int age;

  BmiResults_Screen({
    required this.result,
    required this.age,
    required this.isMale,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gender : ${isMale ? 'Male' : 'Female'}'),
            Text('Age : $age'),
            Text('Result : $result'),
          ],
        ),
      ),
    );
  }
}
