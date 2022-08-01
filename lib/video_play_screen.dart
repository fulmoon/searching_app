import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayScreen extends StatefulWidget {
  final String url;

  const VideoPlayScreen(this.url, {Key? key}) : super(key: key);

  @override
  State<VideoPlayScreen> createState() => _VideoPlayScreenState(url);
}

class _VideoPlayScreenState extends State<VideoPlayScreen> {
  late VideoPlayerController _controller;

  //int _selectedIndex = 0;

  String videoUrl = '';

  _VideoPlayScreenState(this.videoUrl);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.network(videoUrl);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final orientation = MediaQuery.of(context).orientation;
    //final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Player'),
      ), //AppBar
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
            future: _controller.initialize(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Center(
                  child: Text('에러가 났습니다.'),
                );
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }

              if (_controller.value.hasError) {
                return const Center(
                  child: Text('데이터가 비어 있습니다.'),
                );
              }

              return AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                // Use the VideoPlayer widget to display the video.
                child: GestureDetector(
                  onTap: () {
                    _controller.value.isPlaying
                        ? _controller.pause()
                        : _controller.play();
                  },
                  child: VideoPlayer(_controller),
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.value.isPlaying
              ? _controller.pause()
              : _controller.play();
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
