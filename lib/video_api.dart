import 'dart:convert';

import 'package:searching_app/model/video_data.dart';
import 'package:http/http.dart' as http;

class VideoApi {
  Future<List<VideoData>> getVideos(String query) async {
    Uri url = Uri.parse(
        'https://pixabay.com/api/videos/?key=23092054-b36e9b0a8b519cdbc545308e7&q=$query');

    http.Response response = await http.get(url);
    //print('Response status: ${response.statusCode}');
    //print('Response body: ${response.body}');

    String jsonString = response.body;

    Map<String, dynamic> json = jsonDecode(jsonString);
    Iterable hits = json['hits'];
    return hits.map((e) => VideoData.fromJson(e)).toList();
  }
}
