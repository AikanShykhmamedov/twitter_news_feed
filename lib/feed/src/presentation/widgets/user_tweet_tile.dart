import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:twitter_api/twitter_api.dart';

import '../../models/user_tweet.dart';
import 'public_metrics_bar.dart';

class UserTweetTile extends StatelessWidget {
  const UserTweetTile({
    super.key,
    required this.userTweet,
  });

  final UserTweet userTweet;

  const factory UserTweetTile.compact({
    Key? key,
    required UserTweet userTweet,
  }) = _TweetTileCompact;

  @override
  Widget build(BuildContext context) {
    final authorImage = ClipOval(
      child: CachedNetworkImage(
        imageUrl: userTweet.authorImageUrl,
        fit: BoxFit.fill,
        width: 56,
        height: 56,
      ),
    );

    final authorBar = Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Flexible(
          child: Text(
            userTweet.authorName,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleMedium!,
          ),
        ),
        const SizedBox(width: 4),
        Flexible(
          child: Text(
            '@${userTweet.authorUsername}',
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodySmall!,
          ),
        ),
      ],
    );

    final tweetText = Text(
      userTweet.text,
      style: Theme.of(context).textTheme.bodyMedium!,
    );

    Widget? tweetImage;
    if (userTweet.medias.any((media) => media.type == MediaType.photo)) {
      final imageUrl = userTweet.medias //
          .firstWhere((e) => e.type == MediaType.photo)
          .url!;

      tweetImage = Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Theme.of(context).colorScheme.outline,
            width: 0.0,
            strokeAlign: StrokeAlign.outside,
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
        ),
      );
    }

    final publicMetricsBar = PublicMetricsBar(
      publicMetrics: userTweet.publicMetrics,
    );

    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          authorImage,
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                authorBar,
                tweetText,
                const SizedBox(height: 8),
                if (tweetImage != null) //
                  tweetImage,
                const SizedBox(height: 8),
                publicMetricsBar,
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<UserTweet>('userTweet', userTweet));
  }
}

class _TweetTileCompact extends UserTweetTile {
  const _TweetTileCompact({
    super.key,
    required super.userTweet,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: CachedNetworkImage(
              imageUrl: userTweet.authorImageUrl,
              fit: BoxFit.fill,
              width: 24,
              height: 24,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userTweet.text.replaceAll('\n', ' '),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium!,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
