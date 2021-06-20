import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() func;
  final String funcName;

  Answer(this.funcName, this.func);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue[600],
        textColor: Colors.white,
        child: Text(funcName),
        onPressed: func,
      ),
    );
  }
}
