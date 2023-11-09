import 'package:flutter/material.dart';
import 'bmi_calculator.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Home Page!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman kalkulator BMI
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMICalculator(
                      height: 175, // Contoh tinggi
                      weight: 70, // Contoh berat badan
                    ),
                  ),
                );
              },
              child: Text('Open BMI Calculator'),
            ),
          ],
        ),
      ),
    );
  }
}
