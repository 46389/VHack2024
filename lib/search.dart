import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String userInput = '';

  // Variable to store user input
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff042158),
        title: Text(
          'Search Page',
          style: TextStyle(
          color: Colors.white,
          ),
        ),
        iconTheme: IconThemeData(
        color: Colors.white, 
      ),
      ),
      
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Search',
              style: TextStyle(
                color:Color(0xff042158),
                fontWeight:FontWeight.bold,
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
                backgroundColor: Color(0xff042158),
                minimumSize: const Size(100, 40),
                padding: const EdgeInsets.all(5),
              ),
              child: const Text(
                'proceed',
                style:TextStyle(
                  color:Color(0xfff6ae42),
                  fontWeight:FontWeight.bold)
                ),
            ),
          ],
        ),
      ),
    );
  }
}
