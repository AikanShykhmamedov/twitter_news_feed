import 'package:json_annotation/json_annotation.dart';

enum MediaType {
  @JsonValue('animated_gif')
  animatedGif,
  @JsonValue('photo')
  photo,
  @JsonValue('video')
  video;
}
