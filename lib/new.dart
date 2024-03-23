import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  String userInput = '';

  // Variable to store user input
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff042158),
        title: Text(
          'News Page',
          style: TextStyle(
            color: Colors.white,
        ),
      ),
      iconTheme: IconThemeData(
        color: Colors.white, 
      ),  
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Padding(
                padding: EdgeInsets.only(top: 20.0), // Set the top padding
                child: Text(
                  'News',
                  style: TextStyle(
                    color: Color(0xff042158),
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
              ),
          SizedBox(height: 50),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 12.0),
                child: Container(
                  width: 120, // Set the width of the image container
                  height: 100, // Set the height of the image container
                  child: Image.asset(
                    'news1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

                Expanded(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                        Text(
                          'NATIONAL',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),

                        SizedBox(width: 5),

                        Text(
                          'Jan 21, 2024 @ 9:11pm',
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.grey,
                          ),
                        ),

                        ],
                      ),
                  
                      SizedBox(height: 6),

                      Text(
                        'NST Leader: The menace of scams',
                        style: TextStyle(fontSize: 11),
                      ),
                    ],
                  ),
              ),
              ],
            ),
          ),
          
          Divider(),
          SizedBox(height: 20),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 12.0),
                child: Container(
                  width: 120, // Set the width of the image container
                  height: 100, // Set the height of the image container
                  child: Image.asset(
                    'news2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

                Expanded(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                        Text(
                          'CRIME',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),

                        SizedBox(width: 5),

                        Text(
                          'Jan 21, 2024 @ 3:15pm',
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.grey,
                          ),
                        ),

                        ],
                      ),
                  
                      SizedBox(height: 6),

                      Text(
                        'Six Chinese Nationals Nabbed Over Online Investment Scam',
                        style: TextStyle(fontSize: 11),
                      ),
                    ],
                  ),
              ),
              ],
            ),
          ),

        Divider(),
        SizedBox(height: 20),

        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 12.0),
                child: Container(
                  width: 120, // Set the width of the image container
                  height: 100, // Set the height of the image container
                  child: Image.asset(
                    'news3.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

                Expanded(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                        Text(
                          'NATION',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),

                        SizedBox(width: 5),

                        Text(
                          'June 24, 2024 @ 1:31am',
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.grey,
                          ),
                        ),

                        ],
                      ),
                  
                      SizedBox(height: 6),

                      Text(
                        'Significant increase in online scams in past few weeks, says Dr Wee',
                        style: TextStyle(fontSize: 11),
                      ),
                    ],
                  ),
              ),
              ],
            ),
          ),


        ],
      ),
      );
  }
}
