import 'package:flutter/material.dart';
import 'package:searching_app/image_search_app.dart';
import 'package:searching_app/model/video_data.dart';
import 'package:searching_app/video_api.dart';
import 'package:searching_app/video_play_screen.dart';
import 'package:video_player/video_player.dart';

class VideoSearchApp extends StatefulWidget {
  const VideoSearchApp({Key? key}) : super(key: key);

  @override
  State<VideoSearchApp> createState() => _VideoSearchAppState();
}

class _VideoSearchAppState extends State<VideoSearchApp> {
  final _api = VideoApi();
  final TextEditingController _controller = TextEditingController();
  late VideoPlayerController _videoPlayerController;

  String _query = '';
  int _selectedIndex = 0;

  @override
  void dispose() {
    _controller.dispose();
    _videoPlayerController.dispose();
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
        centerTitle: true,
        title: const Text(
          '비디오 검색 앱',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8),
            //AppBar 와 겹쳐 보이는 문제 발생.
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                labelText: 'Search video',
                suffixIcon: IconButton(
                  onPressed: () {
                    //print('클릭 ${_controller.text}');
                    setState(() {
                      _query = _controller.text;
                    });
                  },
                  icon: const Icon(Icons.search),
                ),
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder<List<VideoData>>(
              future: _api.getVideos(_query),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(
                    child: Text('에러가 났습니다.'),
                  );
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (!snapshot.hasData) {
                  return const Center(
                    child: Text('데이터가 없습니다.'),
                  );
                }
                final videoData = snapshot.data!;

                if (videoData.isEmpty) {
                  return const Center(
                    child: Text('데이터가 비어 있습니다.'),
                  );
                }

                return GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                  ),
                  children: videoData
                      .where((e) => e.tags.contains(_query))
                      .map((videoData) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const VideoPlayScreen()),
                            );
                          },
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'https://i.vimeocdn.com/video/${videoData.picture_id}_295x166.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Center(
                                child: Icon(Icons.play_circle, size: 40)
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                );
              },
            ),
          ),
        ],
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
