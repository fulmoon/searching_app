import 'dart:async';
import 'dart:convert';

import 'package:searching_app/model/picture.dart';
import 'package:http/http.dart' as http;

//PictureApi의 스트림 버전

class PictureStreamApi{
  PictureStreamApi() {
    fetchImages('');
  }
  //final List<Picture> _url = [];

  final _imagesStreamController = StreamController<List<Picture>>();

  Stream<List<Picture>> get imagesStream => _imagesStreamController.stream;

  Future fetchImages(String query) async {
    List<Picture> images = await getImages(query);
    _imagesStreamController.add(images);
  }

  Future<List<Picture>> getImages(String query) async {
    //await Future.delayed(const Duration(seconds: 2));
    Uri url = Uri.parse('https://pixabay.com/api/?key=23092054-b36e9b0a8b519cdbc545308e7&q=$query&image_type=photo');

    http.Response response = await http.get(url);
    //print('Response status: ${response.statusCode}');
    //print('Response body: ${response.body}');

    String jsonString = response.body;

    Map<String, dynamic> json = jsonDecode(jsonString);
    Iterable hits = json['hits'];

    //_pictureStreamController.add(hits.map((e) => Picture.fromJson(e)).toList());    // Usw 처음 시도한 스트림

    return hits.map((e) => Picture.fromJson(e)).toList();


    //임의의 에러를 발생
    //throw Exception('엄청난 에러');

    //비어 있는(size = 0) 데이터 리턴
    // return [];
  }

}
