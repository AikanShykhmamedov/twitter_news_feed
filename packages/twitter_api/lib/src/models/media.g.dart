// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Media _$$_MediaFromJson(Map<String, dynamic> json) => _$_Media(
      mediaKey: json['media_key'] as String,
      type: $enumDecode(_$MediaTypeEnumMap, json['type']),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_MediaToJson(_$_Media instance) => <String, dynamic>{
      'media_key': instance.mediaKey,
      'type': _$MediaTypeEnumMap[instance.type]!,
      'url': instance.url,
    };

const _$MediaTypeEnumMap = {
  MediaType.animatedGif: 'animated_gif',
  MediaType.photo: 'photo',
  MediaType.video: 'video',
};
