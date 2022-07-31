import 'package:flutter/material.dart';
import 'package:searching_app/model/video_data.dart';

class VideoThumbnail extends StatelessWidget {
  final VideoData videoData;

  const VideoThumbnail({
    required this.videoData,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            'https://i.vimeocdn.com/video/${videoData.picture_id}_295x166.jpg',
            fit: BoxFit.cover,
          ),
        ),
        const Center(
            child: Icon(Icons.play_circle, size: 40)),
      ],
    );
  }
}