// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VehicleList _$VehicleListFromJson(Map<String, dynamic> json) {
  return _VehicleList.fromJson(json);
}

/// @nodoc
mixin _$VehicleList {
  int get count => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  List<Vehicle> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleListCopyWith<VehicleList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleListCopyWith<$Res> {
  factory $VehicleListCopyWith(
          VehicleList value, $Res Function(VehicleList) then) =
      _$VehicleListCopyWithImpl<$Res, VehicleList>;
  @useResult
  $Res call({int count, String? previous, String? next, List<Vehicle> results});
}

/// @nodoc
class _$VehicleListCopyWithImpl<$Res, $Val extends VehicleList>
    implements $VehicleListCopyWith<$Res> {
  _$VehicleListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? previous = freezed,
    Object? next = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleListImplCopyWith<$Res>
    implements $VehicleListCopyWith<$Res> {
  factory _$$VehicleListImplCopyWith(
          _$VehicleListImpl value, $Res Function(_$VehicleListImpl) then) =
      __$$VehicleListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, String? previous, String? next, List<Vehicle> results});
}

/// @nodoc
class __$$VehicleListImplCopyWithImpl<$Res>
    extends _$VehicleListCopyWithImpl<$Res, _$VehicleListImpl>
    implements _$$VehicleListImplCopyWith<$Res> {
  __$$VehicleListImplCopyWithImpl(
      _$VehicleListImpl _value, $Res Function(_$VehicleListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? previous = freezed,
    Object? next = freezed,
    Object? results = null,
  }) {
    return _then(_$VehicleListImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VehicleListImpl implements _VehicleList {
  _$VehicleListImpl(
      {required this.count,
      this.previous,
      this.next,
      final List<Vehicle> results = const []})
      : _results = results;

  factory _$VehicleListImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleListImplFromJson(json);

  @override
  final int count;
  @override
  final String? previous;
  @override
  final String? next;
  final List<Vehicle> _results;
  @override
  @JsonKey()
  List<Vehicle> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'VehicleList(count: $count, previous: $previous, next: $next, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleListImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            (identical(other.next, next) || other.next == next) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, previous, next,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleListImplCopyWith<_$VehicleListImpl> get copyWith =>
      __$$VehicleListImplCopyWithImpl<_$VehicleListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleListImplToJson(
      this,
    );
  }
}

abstract class _VehicleList implements VehicleList {
  factory _VehicleList(
      {required final int count,
      final String? previous,
      final String? next,
      final List<Vehicle> results}) = _$VehicleListImpl;

  factory _VehicleList.fromJson(Map<String, dynamic> json) =
      _$VehicleListImpl.fromJson;

  @override
  int get count;
  @override
  String? get previous;
  @override
  String? get next;
  @override
  List<Vehicle> get results;
  @override
  @JsonKey(ignore: true)
  _$$VehicleListImplCopyWith<_$VehicleListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
