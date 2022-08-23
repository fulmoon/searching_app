import 'package:flutter/material.dart';
import 'package:searching_app/data/repository/photo_repository.dart';
import 'package:searching_app/ui/main_action.dart';
import 'package:searching_app/ui/main_state.dart';

class MainViewModel extends ChangeNotifier {
  final _photoRepository = PhotoRepository();

  MainState _state = const MainState();

  MainState get state => _state;

  MainViewModel() {
    _fetchImages('');
  }

  void onAction(MainAction action) {
    action.when(
      getImages: _fetchImages,                        //동일한 코드, 입력과 출력이 같으므로 생략 가능, 있어 보임 ^^;;

      // getImages: (query) {
      //   _fetchImages(query);
      // },
      //getImages: (query) => _fetchImages(query),      //동일한 코드, 한줄 표현

      addAction: () {},
      refresh: () {},
    );

    // if (action is AddAction) {
    // } else if (action is GetImages) {
    //   _fetchImages(action.query);
    // } else if (action is Refresh) {}
  }

  Future<void> _fetchImages(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final photo = await _photoRepository.getImages(query);
    _state = state.copyWith(
      photos: photo,
      isLoading: false,
    );
    notifyListeners();
  }

  // void _addAction() {
  //   print('아이콘 클릭됨');
  // }
}
