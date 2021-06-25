import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 0;

  void addition() {
    setState(() {
      num += 10;
    });
  }

  void subtraction() {
    setState(() {
      num -= 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                num.toString(),
                style: TextStyle(fontSize: 10 + num.toDouble()),
              ),
              ElevatedButton(
                onPressed: addition,
                child: Text('Add'),
              ),
              ElevatedButton(
                onPressed: subtraction,
                child: Text('Subtract'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
