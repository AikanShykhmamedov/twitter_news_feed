import 'package:freezed_annotation/freezed_annotation.dart';

import 'public_metrics.dart';

part 'tweet.freezed.dart';
part 'tweet.g.dart';

@freezed
class Tweet with _$Tweet {
  const factory Tweet({
    required String authorId,
    required String id,
    required String text,
    required DateTime createdAt,
    required PublicMetrics publicMetrics,
    @JsonKey(
      defaultValue: [],
      name: 'attachments',
      fromJson: _extractMediaKeys,
    )
        required List<String> mediaKeys,
  }) = _Tweet;

  factory Tweet.fromJson(Map<String, dynamic> json) => _$TweetFromJson(json);
}

List<String> _extractMediaKeys(Map<String, dynamic> json) {
  return List<String>.from(json['media_keys']);
}
