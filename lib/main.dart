import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            titleTextStyle: TextStyle(fontStyle: FontStyle.italic),
            title: Text('Test'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Text1',
              ),
              Text('Text2'),
              Text('Text3'),
              Row(
                children: <Widget>[Text('text4'), Text('text5')],
              )
            ],
          )),
    );
  }
}
