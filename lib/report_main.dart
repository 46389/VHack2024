import 'package:flutter/material.dart';
import 'package:flutter_application_1/report.dart';

class ReportMainPage extends StatefulWidget {
  @override
  State<ReportMainPage> createState() => _ReportMainPageState();
}

class _ReportMainPageState extends State<ReportMainPage> {
  String userInput = '';

  // Variable to store user input
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff042158),
        title: Text(
          'Report Page',
          style: TextStyle(
          color: Colors.white,
        ),
      ),
      iconTheme: IconThemeData(
        color: Colors.white, 
      ),  
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Report',
            style: TextStyle(
              color:Color(0xff042158),
              fontWeight:FontWeight.bold,
              fontSize: 50,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Add onPressed logic
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff042158),
              minimumSize: const Size(100, 40),
              padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
            ),
            child: const Text(
              'report',
              style: TextStyle(
              color:Color(0xfff6ae42),
              fontWeight:FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          const Text("Number of report left:2"),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:EdgeInsets.fromLTRB(10.0, 80.0, 20.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Phone call fraud',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        '2',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding:EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Message fraud',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        '2',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding:EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Email fraud',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        '0',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding:EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Social media fraud',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        '0',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
