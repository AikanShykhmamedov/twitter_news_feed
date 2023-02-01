// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_tweet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserTweet {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  PublicMetrics get publicMetrics => throw _privateConstructorUsedError;
  String get authorName => throw _privateConstructorUsedError;
  String get authorUsername => throw _privateConstructorUsedError;
  String get authorImageUrl => throw _privateConstructorUsedError;
  List<Media> get medias => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserTweetCopyWith<UserTweet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTweetCopyWith<$Res> {
  factory $UserTweetCopyWith(UserTweet value, $Res Function(UserTweet) then) =
      _$UserTweetCopyWithImpl<$Res, UserTweet>;
  @useResult
  $Res call(
      {String id,
      String text,
      DateTime createdAt,
      PublicMetrics publicMetrics,
      String authorName,
      String authorUsername,
      String authorImageUrl,
      List<Media> medias});

  $PublicMetricsCopyWith<$Res> get publicMetrics;
}

/// @nodoc
class _$UserTweetCopyWithImpl<$Res, $Val extends UserTweet>
    implements $UserTweetCopyWith<$Res> {
  _$UserTweetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? createdAt = null,
    Object? publicMetrics = null,
    Object? authorName = null,
    Object? authorUsername = null,
    Object? authorImageUrl = null,
    Object? medias = null,
  }) {
    return _then(_value.copyWith(
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
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      authorUsername: null == authorUsername
          ? _value.authorUsername
          : authorUsername // ignore: cast_nullable_to_non_nullable
              as String,
      authorImageUrl: null == authorImageUrl
          ? _value.authorImageUrl
          : authorImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      medias: null == medias
          ? _value.medias
          : medias // ignore: cast_nullable_to_non_nullable
              as List<Media>,
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
abstract class _$$_UserTweetCopyWith<$Res> implements $UserTweetCopyWith<$Res> {
  factory _$$_UserTweetCopyWith(
          _$_UserTweet value, $Res Function(_$_UserTweet) then) =
      __$$_UserTweetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String text,
      DateTime createdAt,
      PublicMetrics publicMetrics,
      String authorName,
      String authorUsername,
      String authorImageUrl,
      List<Media> medias});

  @override
  $PublicMetricsCopyWith<$Res> get publicMetrics;
}

/// @nodoc
class __$$_UserTweetCopyWithImpl<$Res>
    extends _$UserTweetCopyWithImpl<$Res, _$_UserTweet>
    implements _$$_UserTweetCopyWith<$Res> {
  __$$_UserTweetCopyWithImpl(
      _$_UserTweet _value, $Res Function(_$_UserTweet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? createdAt = null,
    Object? publicMetrics = null,
    Object? authorName = null,
    Object? authorUsername = null,
    Object? authorImageUrl = null,
    Object? medias = null,
  }) {
    return _then(_$_UserTweet(
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
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      authorUsername: null == authorUsername
          ? _value.authorUsername
          : authorUsername // ignore: cast_nullable_to_non_nullable
              as String,
      authorImageUrl: null == authorImageUrl
          ? _value.authorImageUrl
          : authorImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      medias: null == medias
          ? _value._medias
          : medias // ignore: cast_nullable_to_non_nullable
              as List<Media>,
    ));
  }
}

/// @nodoc

class _$_UserTweet implements _UserTweet {
  const _$_UserTweet(
      {required this.id,
      required this.text,
      required this.createdAt,
      required this.publicMetrics,
      required this.authorName,
      required this.authorUsername,
      required this.authorImageUrl,
      required final List<Media> medias})
      : _medias = medias;

  @override
  final String id;
  @override
  final String text;
  @override
  final DateTime createdAt;
  @override
  final PublicMetrics publicMetrics;
  @override
  final String authorName;
  @override
  final String authorUsername;
  @override
  final String authorImageUrl;
  final List<Media> _medias;
  @override
  List<Media> get medias {
    if (_medias is EqualUnmodifiableListView) return _medias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medias);
  }

  @override
  String toString() {
    return 'UserTweet(id: $id, text: $text, createdAt: $createdAt, publicMetrics: $publicMetrics, authorName: $authorName, authorUsername: $authorUsername, authorImageUrl: $authorImageUrl, medias: $medias)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserTweet &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.publicMetrics, publicMetrics) ||
                other.publicMetrics == publicMetrics) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.authorUsername, authorUsername) ||
                other.authorUsername == authorUsername) &&
            (identical(other.authorImageUrl, authorImageUrl) ||
                other.authorImageUrl == authorImageUrl) &&
            const DeepCollectionEquality().equals(other._medias, _medias));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      text,
      createdAt,
      publicMetrics,
      authorName,
      authorUsername,
      authorImageUrl,
      const DeepCollectionEquality().hash(_medias));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserTweetCopyWith<_$_UserTweet> get copyWith =>
      __$$_UserTweetCopyWithImpl<_$_UserTweet>(this, _$identity);
}

abstract class _UserTweet implements UserTweet {
  const factory _UserTweet(
      {required final String id,
      required final String text,
      required final DateTime createdAt,
      required final PublicMetrics publicMetrics,
      required final String authorName,
      required final String authorUsername,
      required final String authorImageUrl,
      required final List<Media> medias}) = _$_UserTweet;

  @override
  String get id;
  @override
  String get text;
  @override
  DateTime get createdAt;
  @override
  PublicMetrics get publicMetrics;
  @override
  String get authorName;
  @override
  String get authorUsername;
  @override
  String get authorImageUrl;
  @override
  List<Media> get medias;
  @override
  @JsonKey(ignore: true)
  _$$_UserTweetCopyWith<_$_UserTweet> get copyWith =>
      throw _privateConstructorUsedError;
}
