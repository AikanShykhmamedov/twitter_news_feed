import 'package:flutter/material.dart';
import 'package:twitter_news_feed/feed/feed.dart';

import 'app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const FeedScreen(),
    );
  }
}
