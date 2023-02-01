// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tweet _$TweetFromJson(Map<String, dynamic> json) {
  return _Tweet.fromJson(json);
}

/// @nodoc
mixin _$Tweet {
  String get authorId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  PublicMetrics get publicMetrics => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [], name: 'attachments', fromJson: _extractMediaKeys)
  List<String> get mediaKeys => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetCopyWith<Tweet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetCopyWith<$Res> {
  factory $TweetCopyWith(Tweet value, $Res Function(Tweet) then) =
      _$TweetCopyWithImpl<$Res, Tweet>;
  @useResult
  $Res call(
      {String authorId,
      String id,
      String text,
      DateTime createdAt,
      PublicMetrics publicMetrics,
      @JsonKey(defaultValue: [], name: 'attachments', fromJson: _extractMediaKeys)
          List<String> mediaKeys});

  $PublicMetricsCopyWith<$Res> get publicMetrics;
}

/// @nodoc
class _$TweetCopyWithImpl<$Res, $Val extends Tweet>
    implements $TweetCopyWith<$Res> {
  _$TweetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorId = null,
    Object? id = null,
    Object? text = null,
    Object? createdAt = null,
    Object? publicMetrics = null,
    Object? mediaKeys = null,
  }) {
    return _then(_value.copyWith(
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      publicMetrics: null == publicMetrics
          ? _value.publicMetrics
          : publicMetrics // ignore: cast_nullable_to_non_nullable
              as PublicMetrics,
      mediaKeys: null == mediaKeys
          ? _value.mediaKeys
          : mediaKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PublicMetricsCopyWith<$Res> get publicMetrics {
    return $PublicMetricsCopyWith<$Res>(_value.publicMetrics, (value) {
      return _then(_value.copyWith(publicMetrics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TweetCopyWith<$Res> implements $TweetCopyWith<$Res> {
  factory _$$_TweetCopyWith(_$_Tweet value, $Res Function(_$_Tweet) then) =
      __$$_TweetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String authorId,
      String id,
      String text,
      DateTime createdAt,
      PublicMetrics publicMetrics,
      @JsonKey(defaultValue: [], name: 'attachments', fromJson: _extractMediaKeys)
          List<String> mediaKeys});

  @override
  $PublicMetricsCopyWith<$Res> get publicMetrics;
}

/// @nodoc
class __$$_TweetCopyWithImpl<$Res> extends _$TweetCopyWithImpl<$Res, _$_Tweet>
    implements _$$_TweetCopyWith<$Res> {
  __$$_TweetCopyWithImpl(_$_Tweet _value, $Res Function(_$_Tweet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorId = null,
    Object? id = null,
    Object? text = null,
    Object? createdAt = null,
    Object? publicMetrics = null,
    Object? mediaKeys = null,
  }) {
    return _then(_$_Tweet(
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      publicMetrics: null == publicMetrics
          ? _value.publicMetrics
          : publicMetrics // ignore: cast_nullable_to_non_nullable
              as PublicMetrics,
      mediaKeys: null == mediaKeys
          ? _value._mediaKeys
          : mediaKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tweet implements _Tweet {
  const _$_Tweet(
      {required this.authorId,
      required this.id,
      required this.text,
      required this.createdAt,
      required this.publicMetrics,
      @JsonKey(defaultValue: [], name: 'attachments', fromJson: _extractMediaKeys)
          required final List<String> mediaKeys})
      : _mediaKeys = mediaKeys;

  factory _$_Tweet.fromJson(Map<String, dynamic> json) =>
      _$$_TweetFromJson(json);

  @override
  final String authorId;
  @override
  final String id;
  @override
  final String text;
  @override
  final DateTime createdAt;
  @override
  final PublicMetrics publicMetrics;
  final List<String> _mediaKeys;
  @override
  @JsonKey(defaultValue: [], name: 'attachments', fromJson: _extractMediaKeys)
  List<String> get mediaKeys {
    if (_mediaKeys is EqualUnmodifiableListView) return _mediaKeys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaKeys);
  }

  @override
  String toString() {
    return 'Tweet(authorId: $authorId, id: $id, text: $text, createdAt: $createdAt, publicMetrics: $publicMetrics, mediaKeys: $mediaKeys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tweet &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.publicMetrics, publicMetrics) ||
                other.publicMetrics == publicMetrics) &&
            const DeepCollectionEquality()
                .equals(other._mediaKeys, _mediaKeys));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, authorId, id, text, createdAt,
      publicMetrics, const DeepCollectionEquality().hash(_mediaKeys));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TweetCopyWith<_$_Tweet> get copyWith =>
      __$$_TweetCopyWithImpl<_$_Tweet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetToJson(
      this,
    );
  }
}

abstract class _Tweet implements Tweet {
  const factory _Tweet(
      {required final String authorId,
      required final String id,
      required final String text,
      required final DateTime createdAt,
      required final PublicMetrics publicMetrics,
      @JsonKey(defaultValue: [], name: 'attachments', fromJson: _extractMediaKeys)
          required final List<String> mediaKeys}) = _$_Tweet;

  factory _Tweet.fromJson(Map<String, dynamic> json) = _$_Tweet.fromJson;

  @override
  String get authorId;
  @override
  String get id;
  @override
  String get text;
  @override
  DateTime get createdAt;
  @override
  PublicMetrics get publicMetrics;
  @override
  @JsonKey(defaultValue: [], name: 'attachments', fromJson: _extractMediaKeys)
  List<String> get mediaKeys;
  @override
  @JsonKey(ignore: true)
  _$$_TweetCopyWith<_$_Tweet> get copyWith =>
      throw _privateConstructorUsedError;
}
