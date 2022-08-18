import 'package:flutter/material.dart';
import 'package:searching_app/data/repository/photo_repository.dart';
import 'package:searching_app/model/photo.dart';

class MainViewModel extends ChangeNotifier {
  final _photoRepository  = PhotoRepository();

  List<Photo> photos = [];

  bool isLoading = false;


  MainViewModel() {
    fetchImages('');
  }

  Future<void> fetchImages(String query) async{
    isLoading = true;
    notifyListeners();

    photos = await _photoRepository.getImages(query);
    isLoading = false;
    notifyListeners();
  }
}