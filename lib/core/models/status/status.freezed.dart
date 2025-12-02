// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Status {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String error) failure,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String error)? failure,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String error)? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusIdle value) idle,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusFailure value) failure,
    required TResult Function(StatusSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusIdle value)? idle,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusFailure value)? failure,
    TResult? Function(StatusSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusIdle value)? idle,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusFailure value)? failure,
    TResult Function(StatusSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res, Status>;
}

/// @nodoc
class _$StatusCopyWithImpl<$Res, $Val extends Status>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StatusIdleImplCopyWith<$Res> {
  factory _$$StatusIdleImplCopyWith(
          _$StatusIdleImpl value, $Res Function(_$StatusIdleImpl) then) =
      __$$StatusIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusIdleImplCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusIdleImpl>
    implements _$$StatusIdleImplCopyWith<$Res> {
  __$$StatusIdleImplCopyWithImpl(
      _$StatusIdleImpl _value, $Res Function(_$StatusIdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StatusIdleImpl implements StatusIdle {
  const _$StatusIdleImpl();

  @override
  String toString() {
    return 'Status.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusIdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String error) failure,
    required TResult Function() success,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String error)? failure,
    TResult? Function()? success,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String error)? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusIdle value) idle,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusFailure value) failure,
    required TResult Function(StatusSuccess value) success,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusIdle value)? idle,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusFailure value)? failure,
    TResult? Function(StatusSuccess value)? success,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusIdle value)? idle,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusFailure value)? failure,
    TResult Function(StatusSuccess value)? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class StatusIdle implements Status {
  const factory StatusIdle() = _$StatusIdleImpl;
}

/// @nodoc
abstract class _$$StatusLoadingImplCopyWith<$Res> {
  factory _$$StatusLoadingImplCopyWith(
          _$StatusLoadingImpl value, $Res Function(_$StatusLoadingImpl) then) =
      __$$StatusLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusLoadingImplCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusLoadingImpl>
    implements _$$StatusLoadingImplCopyWith<$Res> {
  __$$StatusLoadingImplCopyWithImpl(
      _$StatusLoadingImpl _value, $Res Function(_$StatusLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StatusLoadingImpl implements StatusLoading {
  const _$StatusLoadingImpl();

  @override
  String toString() {
    return 'Status.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String error) failure,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String error)? failure,
    TResult? Function()? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String error)? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusIdle value) idle,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusFailure value) failure,
    required TResult Function(StatusSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusIdle value)? idle,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusFailure value)? failure,
    TResult? Function(StatusSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusIdle value)? idle,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusFailure value)? failure,
    TResult Function(StatusSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StatusLoading implements Status {
  const factory StatusLoading() = _$StatusLoadingImpl;
}

/// @nodoc
abstract class _$$StatusFailureImplCopyWith<$Res> {
  factory _$$StatusFailureImplCopyWith(
          _$StatusFailureImpl value, $Res Function(_$StatusFailureImpl) then) =
      __$$StatusFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$StatusFailureImplCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusFailureImpl>
    implements _$$StatusFailureImplCopyWith<$Res> {
  __$$StatusFailureImplCopyWithImpl(
      _$StatusFailureImpl _value, $Res Function(_$StatusFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$StatusFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StatusFailureImpl implements StatusFailure {
  const _$StatusFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'Status.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusFailureImplCopyWith<_$StatusFailureImpl> get copyWith =>
      __$$StatusFailureImplCopyWithImpl<_$StatusFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String error) failure,
    required TResult Function() success,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String error)? failure,
    TResult? Function()? success,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String error)? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusIdle value) idle,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusFailure value) failure,
    required TResult Function(StatusSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusIdle value)? idle,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusFailure value)? failure,
    TResult? Function(StatusSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusIdle value)? idle,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusFailure value)? failure,
    TResult Function(StatusSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class StatusFailure implements Status {
  const factory StatusFailure(final String error) = _$StatusFailureImpl;

  String get error;

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusFailureImplCopyWith<_$StatusFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusSuccessImplCopyWith<$Res> {
  factory _$$StatusSuccessImplCopyWith(
          _$StatusSuccessImpl value, $Res Function(_$StatusSuccessImpl) then) =
      __$$StatusSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusSuccessImplCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusSuccessImpl>
    implements _$$StatusSuccessImplCopyWith<$Res> {
  __$$StatusSuccessImplCopyWithImpl(
      _$StatusSuccessImpl _value, $Res Function(_$StatusSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StatusSuccessImpl implements StatusSuccess {
  const _$StatusSuccessImpl();

  @override
  String toString() {
    return 'Status.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String error) failure,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String error)? failure,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String error)? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusIdle value) idle,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusFailure value) failure,
    required TResult Function(StatusSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusIdle value)? idle,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusFailure value)? failure,
    TResult? Function(StatusSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusIdle value)? idle,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusFailure value)? failure,
    TResult Function(StatusSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class StatusSuccess implements Status {
  const factory StatusSuccess() = _$StatusSuccessImpl;
}
