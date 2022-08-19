import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_action.freezed.dart';

@freezed
class MainAction<T> with _$MainAction<T> {
  const factory MainAction.getImages(String query) = GetImages;
  const factory MainAction.addAction() = AddAction;
  const factory MainAction.refresh() = Refresh;
}