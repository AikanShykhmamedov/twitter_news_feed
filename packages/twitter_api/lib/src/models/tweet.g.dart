// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tweet _$$_TweetFromJson(Map<String, dynamic> json) => _$_Tweet(
      authorId: json['author_id'] as String,
      id: json['id'] as String,
      text: json['text'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      publicMetrics: PublicMetrics.fromJson(
          json['public_metrics'] as Map<String, dynamic>),
      mediaKeys: json['attachments'] == null
          ? []
          : _extractMediaKeys(json['attachments'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TweetToJson(_$_Tweet instance) => <String, dynamic>{
      'author_id': instance.authorId,
      'id': instance.id,
      'text': instance.text,
      'created_at': instance.createdAt.toIso8601String(),
      'public_metrics': instance.publicMetrics,
      'attachments': instance.mediaKeys,
    };
