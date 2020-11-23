import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Button pressed!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: Column(
          children: [
            Text("Questions?"),
            RaisedButton(child: Text("Answer1"), onPressed: answerQuestion),
            RaisedButton(
                child: Text("Answer2"),
                onPressed: () => print("Button 2 pressed!")),
            RaisedButton(
                child: Text("Answer3"),
                onPressed: () {
                  print("Button 3 pressed!");
                }),
          ],
        ),
      ),
    );
  }
}
