// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quote_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuoteEntity _$QuoteEntityFromJson(Map<String, dynamic> json) {
  return _QuoteEntity.fromJson(json);
}

/// @nodoc
mixin _$QuoteEntity {
  String get q => throw _privateConstructorUsedError;
  String get a => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuoteEntityCopyWith<QuoteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteEntityCopyWith<$Res> {
  factory $QuoteEntityCopyWith(
          QuoteEntity value, $Res Function(QuoteEntity) then) =
      _$QuoteEntityCopyWithImpl<$Res, QuoteEntity>;
  @useResult
  $Res call({String q, String a});
}

/// @nodoc
class _$QuoteEntityCopyWithImpl<$Res, $Val extends QuoteEntity>
    implements $QuoteEntityCopyWith<$Res> {
  _$QuoteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      q: null == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String,
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuoteEntityImplCopyWith<$Res>
    implements $QuoteEntityCopyWith<$Res> {
  factory _$$QuoteEntityImplCopyWith(
          _$QuoteEntityImpl value, $Res Function(_$QuoteEntityImpl) then) =
      __$$QuoteEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String q, String a});
}

/// @nodoc
class __$$QuoteEntityImplCopyWithImpl<$Res>
    extends _$QuoteEntityCopyWithImpl<$Res, _$QuoteEntityImpl>
    implements _$$QuoteEntityImplCopyWith<$Res> {
  __$$QuoteEntityImplCopyWithImpl(
      _$QuoteEntityImpl _value, $Res Function(_$QuoteEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? a = null,
  }) {
    return _then(_$QuoteEntityImpl(
      q: null == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String,
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuoteEntityImpl implements _QuoteEntity {
  const _$QuoteEntityImpl({this.q = '', this.a = ''});

  factory _$QuoteEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuoteEntityImplFromJson(json);

  @override
  @JsonKey()
  final String q;
  @override
  @JsonKey()
  final String a;

  @override
  String toString() {
    return 'QuoteEntity(q: $q, a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteEntityImpl &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, q, a);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteEntityImplCopyWith<_$QuoteEntityImpl> get copyWith =>
      __$$QuoteEntityImplCopyWithImpl<_$QuoteEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuoteEntityImplToJson(
      this,
    );
  }
}

abstract class _QuoteEntity implements QuoteEntity {
  const factory _QuoteEntity({final String q, final String a}) =
      _$QuoteEntityImpl;

  factory _QuoteEntity.fromJson(Map<String, dynamic> json) =
      _$QuoteEntityImpl.fromJson;

  @override
  String get q;
  @override
  String get a;
  @override
  @JsonKey(ignore: true)
  _$$QuoteEntityImplCopyWith<_$QuoteEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
