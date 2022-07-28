import 'package:flutter/material.dart';

class VideoSearchApp extends StatefulWidget {
  const VideoSearchApp({Key? key}) : super(key: key);

  @override
  State<VideoSearchApp> createState() => _VideoSearchAppState();
}

class _VideoSearchAppState extends State<VideoSearchApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hello'),
      ), //AppBar
      body: const Center(
        child: Text(
          "결과가 나올 부분",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
