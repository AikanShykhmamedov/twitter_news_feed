import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_type.dart';

part 'media.freezed.dart';
part 'media.g.dart';

@freezed
class Media with _$Media {
  const factory Media({
    required String mediaKey,
    required MediaType type,
    required String? url,
  }) = _Media;

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}
