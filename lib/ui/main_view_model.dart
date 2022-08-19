import 'package:flutter/material.dart';
import 'package:searching_app/data/repository/photo_repository.dart';
import 'package:searching_app/ui/main_action.dart';
import 'package:searching_app/ui/main_state.dart';

class MainViewModel extends ChangeNotifier {
  final _photoRepository = PhotoRepository();

  MainState _state = MainState();

  MainState get state => _state;

  // List<Photo> _photos = [];

  MainViewModel() {
    _fetchImages('');
  }

  void onAction(MainAction action) {
    action.when(
      getImages: (query) {
        _fetchImages(query);
      },
      //getImages: _fetchImages;        //동일한 표현
      addAction: () {},
      refresh: () {},
    );
  }

  Future<void> _fetchImages(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final photos = await _photoRepository.getImages(query);
    _state = state.copyWith(
      photos: photos,
      isLoading: false,
    );
    notifyListeners();
  }
}
