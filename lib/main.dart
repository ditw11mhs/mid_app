import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 10;

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
          child: ListView(
            children: <Widget>[
              for (var i = 0; i < num; i++) Text('Item $i'),
              Center(
                  child: Text(
                num.toString(),
                style: TextStyle(fontSize: 10 + num.toDouble()),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: addition,
                    child: Text(
                      'Add',
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                        color: Colors.blue[50],
                      )),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: subtraction,
                    child: Text('Subtract'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
