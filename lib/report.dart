import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  String userInput = '';

  // Variable to store user input
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report Page'),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Report',
              style: TextStyle(
                fontSize: 50, // Set the font size here
              ),
            ),
            SizedBox(height: 80),
            TextField(
              onChanged: (value) {
                userInput = value;
              },
              decoration: InputDecoration(
                hintText: 'Enter phone number (e.g. 60123456789)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 80),
            ElevatedButton(
              onPressed: () {
                //  _submitForm();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFB100),
                minimumSize: const Size(100, 40),
                padding: const EdgeInsets.all(5),
              ),
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
