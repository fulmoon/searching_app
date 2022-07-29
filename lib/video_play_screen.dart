import 'package:flutter/material.dart';
import 'package:searching_app/image_search_app.dart';
import 'package:searching_app/video_search_app.dart';
import 'package:video_player/video_player.dart';

class VideoPlayScreen extends StatefulWidget {
  const VideoPlayScreen({Key? key}) : super(key: key);

  @override
  State<VideoPlayScreen> createState() => _VideoPlayScreenState();
}

class _VideoPlayScreenState extends State<VideoPlayScreen> {
  late VideoPlayerController _controller;
  int _selectedIndex = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ImageSearchApp()),
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const VideoSearchApp()),
        );
      }
    });
  }

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
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'images',
            icon: Icon(
              Icons.image_search_outlined,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            label: 'videos',
            icon: Icon(
              Icons.video_collection,
              color: Colors.red,
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        //selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
