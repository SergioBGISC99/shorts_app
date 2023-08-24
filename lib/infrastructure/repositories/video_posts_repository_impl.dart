import 'package:shorts_app/domain/datasources/video_post_datasource.dart';
import 'package:shorts_app/domain/entities/video_post.dart';
import 'package:shorts_app/domain/repositories/video_post_repository.dart';

class VideoPostsRepository implements VideoPostRepository {
  final VideoPostDatasource videosDatasource;

  VideoPostsRepository({required this.videosDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String user) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }
}
