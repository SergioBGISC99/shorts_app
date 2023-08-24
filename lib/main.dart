import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shorts_app/config/theme/app_theme.dart';
import 'package:shorts_app/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:shorts_app/infrastructure/repositories/video_posts_repository_impl.dart';
import 'package:shorts_app/presentation/screens/discover/discover_screen.dart';
import 'package:shorts_app/presentation/providers/discover_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository =
        VideoPostsRepositoryImpl(videosDatasource: LocalVideoDatasource());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false,
            create: (_) =>
                DiscoverProvider(videoRepository: videoPostRepository)
                  ..loadNextPage())
      ],
      child: MaterialApp(
        title: 'TokTik',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}
