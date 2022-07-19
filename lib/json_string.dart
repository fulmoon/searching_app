import 'package:flutter/material.dart';

class JsonString extends StatefulWidget {
  const JsonString({Key? key}) : super(key: key);

  @override
  State<JsonString> createState() => _JsonStringState();
}

class _JsonStringState extends State<JsonString> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ), //AppBar
      body: Center(
        child: Text(
          "결과가 나올 부분",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
