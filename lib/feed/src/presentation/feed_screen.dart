import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:twitter_api/twitter_api.dart';
import 'package:twitter_news_feed/app/app_assets.dart';

import '../stores/feed_store.dart';
import 'widgets/paged_list_view.dart';
import 'widgets/user_tweet_tile.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  late final FeedStore _store;

  var _showCompact = false;

  @override
  void initState() {
    super.initState();

    final twitterApiClient = GetIt.I.get<TwitterApiClient>();

    _store = FeedStore(
      twitterApiClient: twitterApiClient,
    )..getUserTweets();

    autorun((_) {
      if (_store.gotException) {
        final snackBar = SnackBar(
          content: const Text('Error'),
          backgroundColor: Theme.of(context).colorScheme.error,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          AppAssets.twitterLogo,
          width: 20,
          height: 20,
        ),
        actions: [
          IconButton(
            onPressed: _onViewModePressed,
            icon: _showCompact
                ? const Icon(Icons.list_outlined)
                : const Icon(Icons.view_agenda_outlined),
          ),
        ],
      ),
      body: Observer(
        builder: (context) {
          if (_store.isLoading) {
            return const Center(
              child: SizedBox.square(
                dimension: 24,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                ),
              ),
            );
          }

          return PagedListView(
            itemCount: _store.userTweets.length,
            itemBuilder: (context, index) {
              if (_showCompact) {
                return UserTweetTile.compact(
                  userTweet: _store.userTweets[index],
                );
              }

              return UserTweetTile(
                userTweet: _store.userTweets[index],
              );
            },
            onLoadPage: _store.haveNextPage ? _store.getNextUserTweets : null,
          );
        },
      ),
    );
  }

  void _onViewModePressed() async {
    setState(() {
      _showCompact = !_showCompact;
    });
  }
}
