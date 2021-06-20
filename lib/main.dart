import 'package:flutter/material.dart';
import 'package:mid_app/ans.dart';
import 'package:mid_app/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _i = 0;
  var texts = ['oh','there','you','are','I','just','wanna','say','I', 'Love', 'You'];

  void _next() {
    setState(() {
      if (_i < texts.length-1) {
        _i++;
      } else {
        _i = 0;
      }
    });

    print(_i);
  }

  void _before() {
    setState(() {
      if (_i > 0) {
        _i--;
      } else {
        _i = texts.length-1;
      }
    });

    print(_i);
  }

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: Column(
          children: <Widget>[
            Question(texts[_i]),
            Answer('Next', _next),
            Answer('Before',_before)
          ],
        ),
      ),
    );
  }
}
