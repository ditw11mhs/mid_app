import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Main Page"),
        ),
        body: Center(
            child: ElevatedButton(
          child: Text("Back to Main Page"),
          onPressed: () {
            Navigator.pop(context);
          },
        )));
  }
}
