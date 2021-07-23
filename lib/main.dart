import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'font_style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('My App'),
            backgroundColor: Colors.red,
          ),
          body: SafeArea(
            child: Center(
              child: Container(
                // color: Colors.blue,
                margin: EdgeInsets.only(
                    left: 10.0, top: 5.0, right: 10.0, bottom: 5.0),
                padding: EdgeInsets.only(
                    left: 10.0, top: 5.0, right: 10.0, bottom: 5.0),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('assets/images/test.png'),
                      height: 200,
                    ),
                    Text(
                      'Hello, world!',
                      style: Header,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
