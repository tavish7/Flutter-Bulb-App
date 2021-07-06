import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color bulbColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Bulb'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.lightbulb,
              size: 130,
              color: bulbColor
              
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                     bulbColor = Colors.red;
                  });
                },
              
                child: Container(
                 
                  padding: EdgeInsets.symmetric(
                    horizontal: 20, 
                    vertical: 10
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  child: Text(
                    "Red",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                ),
              ),
              SizedBox(height: 10),

              GestureDetector(
                onTap: () {
                  setState(() {
                    bulbColor = Colors.green;
                  });
                },
              
                child: Container(
                 
                  padding: EdgeInsets.symmetric(
                    horizontal: 20, 
                    vertical: 10
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  child: Text(
                    "Green",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                ),
              ),
              SizedBox(height: 10),

              GestureDetector(
                onTap: () {
                  setState(() {
                    bulbColor = Colors.blue;
                  });
                },
              
                child: Container(
                 
                  padding: EdgeInsets.symmetric(
                    horizontal: 20, 
                    vertical: 10
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  child: Text(
                    "Blue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}