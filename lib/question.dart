import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const question({Key? key}) : super(key: key);
  final String textoutput;

  Question(this.textoutput);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        textoutput,
        style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
        textAlign: TextAlign.center,
      ),
    );
  }
}
