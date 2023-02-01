import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitter_api/twitter_api.dart';

part 'user_tweet.freezed.dart';

@freezed
class UserTweet with _$UserTweet {
  const factory UserTweet({
    required String id,
    required String text,
    required DateTime createdAt,
    required PublicMetrics publicMetrics,
    required String authorName,
    required String authorUsername,
    required String authorImageUrl,
    required List<Media> medias,
  }) = _UserTweet;
}
