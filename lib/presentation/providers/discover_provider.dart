import 'package:flutter/widgets.dart';
import 'package:shorts_app/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
//todo: cargar videos
    notifyListeners();
  }
}
