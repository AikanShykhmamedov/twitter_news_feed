import 'package:mobx/mobx.dart';
import 'package:twitter_api/twitter_api.dart';

import '../models/user_tweet.dart';

part 'feed_store.g.dart';

class FeedStore = FeedStoreBase with _$FeedStore;

abstract class FeedStoreBase with Store {
  FeedStoreBase({
    required TwitterApiClient twitterApiClient,
  }) : _client = twitterApiClient;

  final TwitterApiClient _client;

  static const _flutterDevId = '420730316';
  static const _maxResult = 10;

  String? _nextPaginationToken;

  @observable
  var isLoading = true;

  @observable
  var userTweets = ObservableList<UserTweet>();

  @observable
  var haveNextPage = false;

  @observable
  var gotException = false;

  @action
  Future<void> getUserTweets() async {
    try {
      final response = await _client.getUserTweets(
        id: _flutterDevId,
        maxResult: _maxResult,
      );

      _nextPaginationToken = response.nextToken;

      final newUserTweets = _extractUserTweets(response);

      isLoading = false;
      userTweets.addAll(newUserTweets);
      haveNextPage = newUserTweets.length == _maxResult;
    } catch (_) {
      gotException = true;
    }
  }

  @action
  Future<void> getNextUserTweets() async {
    try {
      final response = await _client.getUserTweets(
        id: _flutterDevId,
        maxResult: _maxResult,
        paginationToken: _nextPaginationToken,
      );

      _nextPaginationToken = response.nextToken;

      final newUserTweets = _extractUserTweets(response);

      userTweets.addAll(newUserTweets);
      haveNextPage = newUserTweets.length == _maxResult;
    } catch (_) {
      gotException = true;
    }
  }

  Iterable<UserTweet> _extractUserTweets(UserTweetsResponse response) {
    return response.tweets.map(
      (tweet) => UserTweet(
        id: tweet.id,
        text: tweet.text,
        createdAt: tweet.createdAt,
        publicMetrics: tweet.publicMetrics,
        authorName: response.user.name,
        authorUsername: response.user.username,
        authorImageUrl: response.user.profileImageUrl,
        medias: tweet.mediaKeys
            .map((key) => response.media.singleWhere(
                  (media) => media.mediaKey == key,
                ))
            .toList(),
      ),
    );
  }
}
