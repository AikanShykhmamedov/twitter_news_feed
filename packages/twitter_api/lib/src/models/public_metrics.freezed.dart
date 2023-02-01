// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PublicMetrics _$PublicMetricsFromJson(Map<String, dynamic> json) {
  return _PublicMetrics.fromJson(json);
}

/// @nodoc
mixin _$PublicMetrics {
  int get retweetCount => throw _privateConstructorUsedError;
  int get replyCount => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  int get impressionCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublicMetricsCopyWith<PublicMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicMetricsCopyWith<$Res> {
  factory $PublicMetricsCopyWith(
          PublicMetrics value, $Res Function(PublicMetrics) then) =
      _$PublicMetricsCopyWithImpl<$Res, PublicMetrics>;
  @useResult
  $Res call(
      {int retweetCount, int replyCount, int likeCount, int impressionCount});
}

/// @nodoc
class _$PublicMetricsCopyWithImpl<$Res, $Val extends PublicMetrics>
    implements $PublicMetricsCopyWith<$Res> {
  _$PublicMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? retweetCount = null,
    Object? replyCount = null,
    Object? likeCount = null,
    Object? impressionCount = null,
  }) {
    return _then(_value.copyWith(
      retweetCount: null == retweetCount
          ? _value.retweetCount
          : retweetCount // ignore: cast_nullable_to_non_nullable
              as int,
      replyCount: null == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      impressionCount: null == impressionCount
          ? _value.impressionCount
          : impressionCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PublicMetricsCopyWith<$Res>
    implements $PublicMetricsCopyWith<$Res> {
  factory _$$_PublicMetricsCopyWith(
          _$_PublicMetrics value, $Res Function(_$_PublicMetrics) then) =
      __$$_PublicMetricsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int retweetCount, int replyCount, int likeCount, int impressionCount});
}

/// @nodoc
class __$$_PublicMetricsCopyWithImpl<$Res>
    extends _$PublicMetricsCopyWithImpl<$Res, _$_PublicMetrics>
    implements _$$_PublicMetricsCopyWith<$Res> {
  __$$_PublicMetricsCopyWithImpl(
      _$_PublicMetrics _value, $Res Function(_$_PublicMetrics) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? retweetCount = null,
    Object? replyCount = null,
    Object? likeCount = null,
    Object? impressionCount = null,
  }) {
    return _then(_$_PublicMetrics(
      retweetCount: null == retweetCount
          ? _value.retweetCount
          : retweetCount // ignore: cast_nullable_to_non_nullable
              as int,
      replyCount: null == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      impressionCount: null == impressionCount
          ? _value.impressionCount
          : impressionCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PublicMetrics implements _PublicMetrics {
  const _$_PublicMetrics(
      {required this.retweetCount,
      required this.replyCount,
      required this.likeCount,
      required this.impressionCount});

  factory _$_PublicMetrics.fromJson(Map<String, dynamic> json) =>
      _$$_PublicMetricsFromJson(json);

  @override
  final int retweetCount;
  @override
  final int replyCount;
  @override
  final int likeCount;
  @override
  final int impressionCount;

  @override
  String toString() {
    return 'PublicMetrics(retweetCount: $retweetCount, replyCount: $replyCount, likeCount: $likeCount, impressionCount: $impressionCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PublicMetrics &&
            (identical(other.retweetCount, retweetCount) ||
                other.retweetCount == retweetCount) &&
            (identical(other.replyCount, replyCount) ||
                other.replyCount == replyCount) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.impressionCount, impressionCount) ||
                other.impressionCount == impressionCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, retweetCount, replyCount, likeCount, impressionCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PublicMetricsCopyWith<_$_PublicMetrics> get copyWith =>
      __$$_PublicMetricsCopyWithImpl<_$_PublicMetrics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PublicMetricsToJson(
      this,
    );
  }
}

abstract class _PublicMetrics implements PublicMetrics {
  const factory _PublicMetrics(
      {required final int retweetCount,
      required final int replyCount,
      required final int likeCount,
      required final int impressionCount}) = _$_PublicMetrics;

  factory _PublicMetrics.fromJson(Map<String, dynamic> json) =
      _$_PublicMetrics.fromJson;

  @override
  int get retweetCount;
  @override
  int get replyCount;
  @override
  int get likeCount;
  @override
  int get impressionCount;
  @override
  @JsonKey(ignore: true)
  _$$_PublicMetricsCopyWith<_$_PublicMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}
