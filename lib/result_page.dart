import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double bmi;

  ResultPage({required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
        backgroundColor: Colors.green, // Change AppBar color
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your BMI is',
              style: TextStyle(
                fontSize: 24,
                color: Colors.green, // Change text color
              ),
            ),
            SizedBox(height: 20),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.green, // Change text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
