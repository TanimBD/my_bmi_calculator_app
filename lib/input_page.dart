import 'package:flutter/material.dart';
import 'result_page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  double? _bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Your Details'),
        backgroundColor: Colors.green, // Change AppBar color
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _weightController,
              decoration: InputDecoration(
                labelText: 'Enter Weight (kg)',
                labelStyle: TextStyle(color: Colors.green), // Change label color
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextField(
              controller: _heightController,
              decoration: InputDecoration(
                labelText: 'Enter Height (cm)',
                labelStyle: TextStyle(color: Colors.green), // Change label color
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateBMI,
              child: Text('Calculate'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.green, // Change text color
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _calculateBMI() {
    final double weight = double.parse(_weightController.text);
    final double height = double.parse(_heightController.text) / 100;
    setState(() {
      _bmi = weight / (height * height);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultPage(bmi: _bmi!),
        ),
      );
    });
  }
}
