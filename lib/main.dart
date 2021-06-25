import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> _widgets = [];

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

  _MyAppState() {
    for (int i = 0; i < num; i++) {
      _widgets.add(Text('Hello' + i.toString()));
      print(i);
    }
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
              Column(children: _widgets),
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
