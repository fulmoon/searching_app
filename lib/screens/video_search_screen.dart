import 'package:flutter/material.dart';
import 'package:searching_app/components/video_thumbnail.dart';
import 'package:searching_app/model/video_data.dart';
import 'package:searching_app/video_api.dart';
import 'package:searching_app/video_play_screen.dart';

class VideoSearchScreen extends StatefulWidget {
  const VideoSearchScreen({Key? key}) : super(key: key);

  @override
  State<VideoSearchScreen> createState() => _VideoSearchScreenState();
}

class _VideoSearchScreenState extends State<VideoSearchScreen> {
  final _api = VideoApi();
  final TextEditingController _controller = TextEditingController();

  String _query = '';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '비디오 검색 앱',
          //style: TextStyle(color: Colors.black),
        ),
        //backgroundColor: Colors.transparent,
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
                  borderSide: BorderSide(
                    // color: Theme.of(context).colorScheme.primary,
                    width: 2,
                  ),
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
              onEditingComplete: () {
                setState(() {
                  _query = _controller.text;
                });
              },
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
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
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
                            MaterialPageRoute(
                                builder: (context) =>
                                    VideoPlayScreen(videoData.videoUrl)),
                          );
                        },
                        child: VideoThumbnail(
                          videoData: videoData,
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
    );
  }
}
