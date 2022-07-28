class VideoData{
  final int id;
  final int picture_id;
  final String tags;

  VideoData({
    required this.id,
    required this.picture_id,
    required this.tags,
  });

  factory VideoData.fromJson(Map<String, dynamic> json) {
    return VideoData(
      id: json['id'] as int,
      picture_id: json['picture_id'] as int,
      tags: json['tags'] as String,
    );
  }
}