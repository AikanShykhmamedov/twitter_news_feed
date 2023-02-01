import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:twitter_api/twitter_api.dart';
import 'package:twitter_icons/twitter_icons.dart';

class PublicMetricsBar extends StatelessWidget {
  const PublicMetricsBar({
    super.key,
    required this.publicMetrics,
  });

  final PublicMetrics publicMetrics;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.labelSmall!;
    const strutStyle = StrutStyle(height: 1.0, forceStrutHeight: true);
    final iconColor = Theme.of(context).colorScheme.secondaryContainer;

    return Row(
      children: [
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                TwitterIcons.reply,
                color: iconColor,
              ),
              if (publicMetrics.replyCount != 0)
                Text(
                  '${publicMetrics.replyCount}',
                  style: textStyle,
                  strutStyle: strutStyle,
                ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                TwitterIcons.retweet,
                color: iconColor,
              ),
              if (publicMetrics.retweetCount != 0)
                Text(
                  '${publicMetrics.retweetCount}',
                  style: textStyle,
                  strutStyle: strutStyle,
                ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                TwitterIcons.like,
                color: iconColor,
              ),
              if (publicMetrics.likeCount != 0)
                Text(
                  '${publicMetrics.likeCount}',
                  style: textStyle,
                  strutStyle: strutStyle,
                ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty<PublicMetrics>('publicMetrics', publicMetrics));
  }
}
