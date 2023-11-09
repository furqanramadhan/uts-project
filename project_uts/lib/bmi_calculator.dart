import 'package:flutter/material.dart';
import 'calculator.dart';

class BMICalculator extends StatelessWidget {
  final int height;
  final int weight;

  BMICalculator({required this.height, required this.weight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your BMI is ${Calculate(height: height, weight: weight).result()}',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Result: ${Calculate(height: height, weight: weight).getText()}',
              style: TextStyle(
                fontSize: 20,
                color: Calculate(height: height, weight: weight).getTextColor(),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Advice: ${Calculate(height: height, weight: weight).getAdvise()}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
