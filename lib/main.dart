import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            titleTextStyle: TextStyle(fontStyle: FontStyle.italic),
            title: Text('Test4'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Text4',
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          fontSize: 50, fontWeight: FontWeight.w100))),
              Text('Text2'),
              Text('Text3'),
              Text('asd'),
              Row(
                children: <Widget>[Text('text4'), Text('text5')],
              )
            ],
          )),
    );
  }
}
