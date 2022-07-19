import 'dart:convert';

import 'package:flutter/material.dart';

class JsonString extends StatefulWidget {
  const JsonString({Key? key}) : super(key: key);

  @override
  State<JsonString> createState() => _JsonStringState();
}

class _JsonStringState extends State<JsonString> {

  Map<String, dynamic>? person;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    initData();
  }

  Future initData() async{
    person = await getData();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Searching App'),
      ), //AppBar
      body: Center(
        child: person == null
        ? const CircularProgressIndicator()
        : Text(
          "이름은 ${person!['name']} 이고, 이메일은 ${person!['email']} 입니다.",
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }

  Future<Map<String, dynamic>> getData() async {
    await Future.delayed(const Duration(seconds: 2));

    String jsonString = '{"name": "홍길동", "email": "aaa@aaa.com"}';

    Map<String, dynamic> jsonMap = jsonDecode(jsonString);

    return jsonMap;
  }
}
