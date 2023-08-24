import 'package:shorts_app/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String url;
  final int likes;
  final int views;

  LocalVideoModel(
      {required this.name, required this.url, this.likes = 0, this.views = 0});

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
          name: json['name'],
          url: json['videoUrl'],
          likes: json['likes'],
          views: json['views']);

  VideoPost toVideoPostEntity() =>
      VideoPost(caption: name, videoUrl: url, likes: likes, views: views);
}
