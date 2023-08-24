import 'package:flutter/material.dart';
import 'package:shorts_app/domain/entities/video_post.dart';
import 'package:shorts_app/presentation/widgets/shared/video_buttons.dart';
import 'package:shorts_app/presentation/widgets/video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final videoPost = videos[index];

        return Stack(
          children: [
            //todo: video player + gradiente
            SizedBox.expand(
              child: FullScreenPlayer(
                  caption: videoPost.caption, videoUrl: videoPost.videoUrl),
            ),
            //FullScreenPlayer(video: videoPost),
            //todo: botones
            Positioned(
                bottom: 40, right: 20, child: VideoButtons(video: videoPost))
          ],
        );
      },
    );
  }
}
