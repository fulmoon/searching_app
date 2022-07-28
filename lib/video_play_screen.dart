import 'package:flutter/material.dart';

class VideoPlayScreen extends StatelessWidget {
  const VideoPlayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vidoe Player'),
      ), //AppBar
      body: const Center(
        child: Text(
          "결과가 나올 부분",
          style: TextStyle(fontSize: 40),
          //_videoPlayerController = VideoPlayerController.network(videoData.videoUrl);
          //_
          //_videoPlayerController.value.isPlaying,
          //? .pauseVideo()
          //: .playVideo(),
        ),
      ),
    );
  }
}
