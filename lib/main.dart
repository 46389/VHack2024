import 'package:flutter/material.dart';
import 'package:flutter_application_1/search.dart';
import 'package:flutter_application_1/report_main.dart';
import 'package:flutter_application_1/new.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 97, 180, 221)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'xx'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  bool isDrawerOpen = false;

  void menuBar() {
    setState(() {
      isDrawerOpen = !isDrawerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff042158),
        title: Text(''),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              isDrawerOpen ? Icons.close : Icons.menu,
            ),
            onPressed: menuBar,
          ),
        ],
      ),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Text(
                    'Menu',
                    style: TextStyle(
                      fontSize: 36,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Home',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                onTap: () {},
              ),
              SizedBox(height: 20),
              ListTile(
                title: Text(
                  'Search',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPage()),
                  );
                },
              ),
              SizedBox(height: 20),
              ListTile(
                title: Text(
                  'Report',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReportMainPage()),
                  );
                },
              ),
              SizedBox(height: 20),
              ListTile(
                title: Text(
                  'News',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewsPage()),
                  );
                },
              ),
              SizedBox(height: 20),
              ListTile(
                title: Text(
                  'Profile',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 10,
            child: Container(
              height: 200,
              child: Image.asset(
                'Be.png',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
          Positioned.fill(
            top: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    backgroundColor:Color(0xff042158),
                  ),
                  onPressed: () {
                    // Action to be performed when the button is pressed
                    print('Search button pressed!');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SearchPage()));
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(60.0, 10.0, 60.0, 10.0),
                    child: Text(
                      'Search',
                      style: TextStyle(
                        fontSize: 40,
                        color:Color(0xfff6ae42),
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    backgroundColor:Color(0xff042158),
                  ),
                  onPressed: () {
                    // Action to be performed when the button is pressed
                    print('Report button pressed!');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReportMainPage()));
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(60.0, 10.0, 60.0, 10.0),
                    child: Text(
                      'Report',
                      style: TextStyle(
                        fontSize: 40,
                        color:Color(0xfff6ae42),
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    backgroundColor:Color(0xff042158),
                  ),
                  onPressed: () {
                    // Action to be performed when the button is pressed
                    print('News button pressed!');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NewsPage()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(75.0, 10.0, 75.0, 10.0),
                    child: Text(
                      'News',
                      style: TextStyle(
                        fontSize: 40,
                        color:Color(0xfff6ae42),
                        fontWeight:FontWeight.bold
                      ),
                    ),
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
