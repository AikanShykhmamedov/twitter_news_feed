import 'media.dart';
import 'tweet.dart';
import 'user.dart';

class UserTweetsResponse {
  const UserTweetsResponse({
    required this.tweets,
    required this.media,
    required this.user,
    required this.nextToken,
  });

  final List<Tweet> tweets;
  final List<Media> media;
  final User user;
  final String? nextToken;

  factory UserTweetsResponse.fromJson(Map<String, dynamic> json) {
    final data = (json['data'] as List).cast<Map<String, dynamic>>();
    final tweets = data.map(Tweet.fromJson).toList();

    final includes = (json['includes'] as Map).cast<String, dynamic>();
    final mediaJson =
        (includes['media'] as List?)?.cast<Map<String, dynamic>>();
    final media = mediaJson?.map(Media.fromJson).toList() ?? [];
    final usersJson = (includes['users'] as List).cast<Map<String, dynamic>>();
    final users = usersJson.map(User.fromJson).toList();

    final meta = (json['meta'] as Map).cast<String, dynamic>();
    final nextToken = meta['next_token'] as String?;

    return UserTweetsResponse(
      tweets: tweets,
      media: media,
      user: users.single,
      nextToken: nextToken,
    );
  }
}
