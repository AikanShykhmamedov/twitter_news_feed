import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:twitter_api/twitter_api.dart';
import 'package:twitter_news_feed/feed/feed.dart';

import 'app_secrets.dart';
import 'app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  static void setup() {
    final twitterApiClient = TwitterApiClient(
      bearerToken: AppSecrets.twitterToken,
    );

    GetIt.I.registerSingleton<TwitterApiClient>(twitterApiClient);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const FeedScreen(),
    );
  }
}
