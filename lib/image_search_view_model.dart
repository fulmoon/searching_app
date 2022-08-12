import 'package:flutter/material.dart';
import 'package:searching_app/model/picture.dart';
import 'package:searching_app/picture_api.dart';

class ImageSearchViewModel extends ChangeNotifier{
  final _pictureApi = PictureApi();
  bool isLoading = false;

  List<Picture> images = [];

  void fetchImages(String query) async{
    isLoading = true;
    notifyListeners();

    images = await _pictureApi.getImages(query);
    isLoading = false;
    notifyListeners();
  }
}