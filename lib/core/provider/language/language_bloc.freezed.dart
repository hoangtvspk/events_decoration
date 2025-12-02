// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LanguageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String languageCode) changeLanguage,
    required TResult Function() loadLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String languageCode)? changeLanguage,
    TResult? Function()? loadLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String languageCode)? changeLanguage,
    TResult Function()? loadLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeLanguage value) changeLanguage,
    required TResult Function(_LoadLanguage value) loadLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeLanguage value)? changeLanguage,
    TResult? Function(_LoadLanguage value)? loadLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLanguage value)? changeLanguage,
    TResult Function(_LoadLanguage value)? loadLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageEventCopyWith<$Res> {
  factory $LanguageEventCopyWith(
          LanguageEvent value, $Res Function(LanguageEvent) then) =
      _$LanguageEventCopyWithImpl<$Res, LanguageEvent>;
}

/// @nodoc
class _$LanguageEventCopyWithImpl<$Res, $Val extends LanguageEvent>
    implements $LanguageEventCopyWith<$Res> {
  _$LanguageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeLanguageImplCopyWith<$Res> {
  factory _$$ChangeLanguageImplCopyWith(_$ChangeLanguageImpl value,
          $Res Function(_$ChangeLanguageImpl) then) =
      __$$ChangeLanguageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String languageCode});
}

/// @nodoc
class __$$ChangeLanguageImplCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res, _$ChangeLanguageImpl>
    implements _$$ChangeLanguageImplCopyWith<$Res> {
  __$$ChangeLanguageImplCopyWithImpl(
      _$ChangeLanguageImpl _value, $Res Function(_$ChangeLanguageImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
  }) {
    return _then(_$ChangeLanguageImpl(
      null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeLanguageImpl implements _ChangeLanguage {
  const _$ChangeLanguageImpl(this.languageCode);

  @override
  final String languageCode;

  @override
  String toString() {
    return 'LanguageEvent.changeLanguage(languageCode: $languageCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLanguageImpl &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, languageCode);

  /// Create a copy of LanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLanguageImplCopyWith<_$ChangeLanguageImpl> get copyWith =>
      __$$ChangeLanguageImplCopyWithImpl<_$ChangeLanguageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String languageCode) changeLanguage,
    required TResult Function() loadLanguage,
  }) {
    return changeLanguage(languageCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String languageCode)? changeLanguage,
    TResult? Function()? loadLanguage,
  }) {
    return changeLanguage?.call(languageCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String languageCode)? changeLanguage,
    TResult Function()? loadLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(languageCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeLanguage value) changeLanguage,
    required TResult Function(_LoadLanguage value) loadLanguage,
  }) {
    return changeLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeLanguage value)? changeLanguage,
    TResult? Function(_LoadLanguage value)? loadLanguage,
  }) {
    return changeLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLanguage value)? changeLanguage,
    TResult Function(_LoadLanguage value)? loadLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(this);
    }
    return orElse();
  }
}

abstract class _ChangeLanguage implements LanguageEvent {
  const factory _ChangeLanguage(final String languageCode) =
      _$ChangeLanguageImpl;

  String get languageCode;

  /// Create a copy of LanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeLanguageImplCopyWith<_$ChangeLanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadLanguageImplCopyWith<$Res> {
  factory _$$LoadLanguageImplCopyWith(
          _$LoadLanguageImpl value, $Res Function(_$LoadLanguageImpl) then) =
      __$$LoadLanguageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadLanguageImplCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res, _$LoadLanguageImpl>
    implements _$$LoadLanguageImplCopyWith<$Res> {
  __$$LoadLanguageImplCopyWithImpl(
      _$LoadLanguageImpl _value, $Res Function(_$LoadLanguageImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadLanguageImpl implements _LoadLanguage {
  const _$LoadLanguageImpl();

  @override
  String toString() {
    return 'LanguageEvent.loadLanguage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadLanguageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String languageCode) changeLanguage,
    required TResult Function() loadLanguage,
  }) {
    return loadLanguage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String languageCode)? changeLanguage,
    TResult? Function()? loadLanguage,
  }) {
    return loadLanguage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String languageCode)? changeLanguage,
    TResult Function()? loadLanguage,
    required TResult orElse(),
  }) {
    if (loadLanguage != null) {
      return loadLanguage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeLanguage value) changeLanguage,
    required TResult Function(_LoadLanguage value) loadLanguage,
  }) {
    return loadLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeLanguage value)? changeLanguage,
    TResult? Function(_LoadLanguage value)? loadLanguage,
  }) {
    return loadLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLanguage value)? changeLanguage,
    TResult Function(_LoadLanguage value)? loadLanguage,
    required TResult orElse(),
  }) {
    if (loadLanguage != null) {
      return loadLanguage(this);
    }
    return orElse();
  }
}

abstract class _LoadLanguage implements LanguageEvent {
  const factory _LoadLanguage() = _$LoadLanguageImpl;
}

/// @nodoc
mixin _$LanguageState {
  String get languageCode => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of LanguageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageStateCopyWith<LanguageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageStateCopyWith<$Res> {
  factory $LanguageStateCopyWith(
          LanguageState value, $Res Function(LanguageState) then) =
      _$LanguageStateCopyWithImpl<$Res, LanguageState>;
  @useResult
  $Res call({String languageCode, bool isLoading, String? error});
}

/// @nodoc
class _$LanguageStateCopyWithImpl<$Res, $Val extends LanguageState>
    implements $LanguageStateCopyWith<$Res> {
  _$LanguageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageStateImplCopyWith<$Res>
    implements $LanguageStateCopyWith<$Res> {
  factory _$$LanguageStateImplCopyWith(
          _$LanguageStateImpl value, $Res Function(_$LanguageStateImpl) then) =
      __$$LanguageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String languageCode, bool isLoading, String? error});
}

/// @nodoc
class __$$LanguageStateImplCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$LanguageStateImpl>
    implements _$$LanguageStateImplCopyWith<$Res> {
  __$$LanguageStateImplCopyWithImpl(
      _$LanguageStateImpl _value, $Res Function(_$LanguageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$LanguageStateImpl(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LanguageStateImpl implements _LanguageState {
  const _$LanguageStateImpl(
      {required this.languageCode, this.isLoading = false, this.error});

  @override
  final String languageCode;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'LanguageState(languageCode: $languageCode, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageStateImpl &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, languageCode, isLoading, error);

  /// Create a copy of LanguageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageStateImplCopyWith<_$LanguageStateImpl> get copyWith =>
      __$$LanguageStateImplCopyWithImpl<_$LanguageStateImpl>(this, _$identity);
}

abstract class _LanguageState implements LanguageState {
  const factory _LanguageState(
      {required final String languageCode,
      final bool isLoading,
      final String? error}) = _$LanguageStateImpl;

  @override
  String get languageCode;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of LanguageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageStateImplCopyWith<_$LanguageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
