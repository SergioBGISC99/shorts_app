import 'package:flutter/widgets.dart';
import 'package:shorts_app/domain/entities/video_post.dart';
import 'package:shorts_app/infrastructure/models/local_video_model.dart';
import 'package:shorts_app/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
//Todo: Repository, datasource

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    videos.addAll(newVideos);

    initialLoading = false;
    notifyListeners();
  }
}
