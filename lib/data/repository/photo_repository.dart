import 'package:searching_app/data/data_source/pixabay_api.dart';
import 'package:searching_app/data/model/photo.dart';

class PhotoRepository {
  final _api = PixabayApi();

  Future<List<Photo>> getImages(String query) async {
    return await _api.getImages(query);
  }
}