// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title, String category) addTask,
    required TResult Function(String taskId) toggleTaskCompletion,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(String category) changeCategory,
    required TResult Function() refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title, String category)? addTask,
    TResult? Function(String taskId)? toggleTaskCompletion,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(String category)? changeCategory,
    TResult? Function()? refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title, String category)? addTask,
    TResult Function(String taskId)? toggleTaskCompletion,
    TResult Function(String taskId)? deleteTask,
    TResult Function(String category)? changeCategory,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_ToggleTaskCompletion value) toggleTaskCompletion,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ChangeCategory value) changeCategory,
    required TResult Function(_RefreshData value) refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_ToggleTaskCompletion value)? toggleTaskCompletion,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ChangeCategory value)? changeCategory,
    TResult? Function(_RefreshData value)? refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_ToggleTaskCompletion value)? toggleTaskCompletion,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ChangeCategory value)? changeCategory,
    TResult Function(_RefreshData value)? refreshData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title, String category) addTask,
    required TResult Function(String taskId) toggleTaskCompletion,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(String category) changeCategory,
    required TResult Function() refreshData,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title, String category)? addTask,
    TResult? Function(String taskId)? toggleTaskCompletion,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(String category)? changeCategory,
    TResult? Function()? refreshData,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title, String category)? addTask,
    TResult Function(String taskId)? toggleTaskCompletion,
    TResult Function(String taskId)? deleteTask,
    TResult Function(String category)? changeCategory,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_ToggleTaskCompletion value) toggleTaskCompletion,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ChangeCategory value) changeCategory,
    required TResult Function(_RefreshData value) refreshData,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_ToggleTaskCompletion value)? toggleTaskCompletion,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ChangeCategory value)? changeCategory,
    TResult? Function(_RefreshData value)? refreshData,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_ToggleTaskCompletion value)? toggleTaskCompletion,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ChangeCategory value)? changeCategory,
    TResult Function(_RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddTaskImplCopyWith<$Res> {
  factory _$$AddTaskImplCopyWith(
          _$AddTaskImpl value, $Res Function(_$AddTaskImpl) then) =
      __$$AddTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String category});
}

/// @nodoc
class __$$AddTaskImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$AddTaskImpl>
    implements _$$AddTaskImplCopyWith<$Res> {
  __$$AddTaskImplCopyWithImpl(
      _$AddTaskImpl _value, $Res Function(_$AddTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? category = null,
  }) {
    return _then(_$AddTaskImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddTaskImpl implements _AddTask {
  const _$AddTaskImpl({required this.title, required this.category});

  @override
  final String title;
  @override
  final String category;

  @override
  String toString() {
    return 'HomeEvent.addTask(title: $title, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, category);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskImplCopyWith<_$AddTaskImpl> get copyWith =>
      __$$AddTaskImplCopyWithImpl<_$AddTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title, String category) addTask,
    required TResult Function(String taskId) toggleTaskCompletion,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(String category) changeCategory,
    required TResult Function() refreshData,
  }) {
    return addTask(title, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title, String category)? addTask,
    TResult? Function(String taskId)? toggleTaskCompletion,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(String category)? changeCategory,
    TResult? Function()? refreshData,
  }) {
    return addTask?.call(title, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title, String category)? addTask,
    TResult Function(String taskId)? toggleTaskCompletion,
    TResult Function(String taskId)? deleteTask,
    TResult Function(String category)? changeCategory,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(title, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_ToggleTaskCompletion value) toggleTaskCompletion,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ChangeCategory value) changeCategory,
    required TResult Function(_RefreshData value) refreshData,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_ToggleTaskCompletion value)? toggleTaskCompletion,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ChangeCategory value)? changeCategory,
    TResult? Function(_RefreshData value)? refreshData,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_ToggleTaskCompletion value)? toggleTaskCompletion,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ChangeCategory value)? changeCategory,
    TResult Function(_RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class _AddTask implements HomeEvent {
  const factory _AddTask(
      {required final String title,
      required final String category}) = _$AddTaskImpl;

  String get title;
  String get category;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTaskImplCopyWith<_$AddTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleTaskCompletionImplCopyWith<$Res> {
  factory _$$ToggleTaskCompletionImplCopyWith(_$ToggleTaskCompletionImpl value,
          $Res Function(_$ToggleTaskCompletionImpl) then) =
      __$$ToggleTaskCompletionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$ToggleTaskCompletionImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ToggleTaskCompletionImpl>
    implements _$$ToggleTaskCompletionImplCopyWith<$Res> {
  __$$ToggleTaskCompletionImplCopyWithImpl(_$ToggleTaskCompletionImpl _value,
      $Res Function(_$ToggleTaskCompletionImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$ToggleTaskCompletionImpl(
      null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToggleTaskCompletionImpl implements _ToggleTaskCompletion {
  const _$ToggleTaskCompletionImpl(this.taskId);

  @override
  final String taskId;

  @override
  String toString() {
    return 'HomeEvent.toggleTaskCompletion(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleTaskCompletionImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleTaskCompletionImplCopyWith<_$ToggleTaskCompletionImpl>
      get copyWith =>
          __$$ToggleTaskCompletionImplCopyWithImpl<_$ToggleTaskCompletionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title, String category) addTask,
    required TResult Function(String taskId) toggleTaskCompletion,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(String category) changeCategory,
    required TResult Function() refreshData,
  }) {
    return toggleTaskCompletion(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title, String category)? addTask,
    TResult? Function(String taskId)? toggleTaskCompletion,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(String category)? changeCategory,
    TResult? Function()? refreshData,
  }) {
    return toggleTaskCompletion?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title, String category)? addTask,
    TResult Function(String taskId)? toggleTaskCompletion,
    TResult Function(String taskId)? deleteTask,
    TResult Function(String category)? changeCategory,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) {
    if (toggleTaskCompletion != null) {
      return toggleTaskCompletion(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_ToggleTaskCompletion value) toggleTaskCompletion,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ChangeCategory value) changeCategory,
    required TResult Function(_RefreshData value) refreshData,
  }) {
    return toggleTaskCompletion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_ToggleTaskCompletion value)? toggleTaskCompletion,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ChangeCategory value)? changeCategory,
    TResult? Function(_RefreshData value)? refreshData,
  }) {
    return toggleTaskCompletion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_ToggleTaskCompletion value)? toggleTaskCompletion,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ChangeCategory value)? changeCategory,
    TResult Function(_RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (toggleTaskCompletion != null) {
      return toggleTaskCompletion(this);
    }
    return orElse();
  }
}

abstract class _ToggleTaskCompletion implements HomeEvent {
  const factory _ToggleTaskCompletion(final String taskId) =
      _$ToggleTaskCompletionImpl;

  String get taskId;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleTaskCompletionImplCopyWith<_$ToggleTaskCompletionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskImplCopyWith<$Res> {
  factory _$$DeleteTaskImplCopyWith(
          _$DeleteTaskImpl value, $Res Function(_$DeleteTaskImpl) then) =
      __$$DeleteTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$DeleteTaskImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DeleteTaskImpl>
    implements _$$DeleteTaskImplCopyWith<$Res> {
  __$$DeleteTaskImplCopyWithImpl(
      _$DeleteTaskImpl _value, $Res Function(_$DeleteTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$DeleteTaskImpl(
      null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteTaskImpl implements _DeleteTask {
  const _$DeleteTaskImpl(this.taskId);

  @override
  final String taskId;

  @override
  String toString() {
    return 'HomeEvent.deleteTask(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      __$$DeleteTaskImplCopyWithImpl<_$DeleteTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title, String category) addTask,
    required TResult Function(String taskId) toggleTaskCompletion,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(String category) changeCategory,
    required TResult Function() refreshData,
  }) {
    return deleteTask(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title, String category)? addTask,
    TResult? Function(String taskId)? toggleTaskCompletion,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(String category)? changeCategory,
    TResult? Function()? refreshData,
  }) {
    return deleteTask?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title, String category)? addTask,
    TResult Function(String taskId)? toggleTaskCompletion,
    TResult Function(String taskId)? deleteTask,
    TResult Function(String category)? changeCategory,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_ToggleTaskCompletion value) toggleTaskCompletion,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ChangeCategory value) changeCategory,
    required TResult Function(_RefreshData value) refreshData,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_ToggleTaskCompletion value)? toggleTaskCompletion,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ChangeCategory value)? changeCategory,
    TResult? Function(_RefreshData value)? refreshData,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_ToggleTaskCompletion value)? toggleTaskCompletion,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ChangeCategory value)? changeCategory,
    TResult Function(_RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class _DeleteTask implements HomeEvent {
  const factory _DeleteTask(final String taskId) = _$DeleteTaskImpl;

  String get taskId;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCategoryImplCopyWith<$Res> {
  factory _$$ChangeCategoryImplCopyWith(_$ChangeCategoryImpl value,
          $Res Function(_$ChangeCategoryImpl) then) =
      __$$ChangeCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$ChangeCategoryImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ChangeCategoryImpl>
    implements _$$ChangeCategoryImplCopyWith<$Res> {
  __$$ChangeCategoryImplCopyWithImpl(
      _$ChangeCategoryImpl _value, $Res Function(_$ChangeCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$ChangeCategoryImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeCategoryImpl implements _ChangeCategory {
  const _$ChangeCategoryImpl(this.category);

  @override
  final String category;

  @override
  String toString() {
    return 'HomeEvent.changeCategory(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCategoryImplCopyWith<_$ChangeCategoryImpl> get copyWith =>
      __$$ChangeCategoryImplCopyWithImpl<_$ChangeCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title, String category) addTask,
    required TResult Function(String taskId) toggleTaskCompletion,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(String category) changeCategory,
    required TResult Function() refreshData,
  }) {
    return changeCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title, String category)? addTask,
    TResult? Function(String taskId)? toggleTaskCompletion,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(String category)? changeCategory,
    TResult? Function()? refreshData,
  }) {
    return changeCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title, String category)? addTask,
    TResult Function(String taskId)? toggleTaskCompletion,
    TResult Function(String taskId)? deleteTask,
    TResult Function(String category)? changeCategory,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) {
    if (changeCategory != null) {
      return changeCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_ToggleTaskCompletion value) toggleTaskCompletion,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ChangeCategory value) changeCategory,
    required TResult Function(_RefreshData value) refreshData,
  }) {
    return changeCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_ToggleTaskCompletion value)? toggleTaskCompletion,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ChangeCategory value)? changeCategory,
    TResult? Function(_RefreshData value)? refreshData,
  }) {
    return changeCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_ToggleTaskCompletion value)? toggleTaskCompletion,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ChangeCategory value)? changeCategory,
    TResult Function(_RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (changeCategory != null) {
      return changeCategory(this);
    }
    return orElse();
  }
}

abstract class _ChangeCategory implements HomeEvent {
  const factory _ChangeCategory(final String category) = _$ChangeCategoryImpl;

  String get category;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeCategoryImplCopyWith<_$ChangeCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshDataImplCopyWith<$Res> {
  factory _$$RefreshDataImplCopyWith(
          _$RefreshDataImpl value, $Res Function(_$RefreshDataImpl) then) =
      __$$RefreshDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshDataImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$RefreshDataImpl>
    implements _$$RefreshDataImplCopyWith<$Res> {
  __$$RefreshDataImplCopyWithImpl(
      _$RefreshDataImpl _value, $Res Function(_$RefreshDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshDataImpl implements _RefreshData {
  const _$RefreshDataImpl();

  @override
  String toString() {
    return 'HomeEvent.refreshData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title, String category) addTask,
    required TResult Function(String taskId) toggleTaskCompletion,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(String category) changeCategory,
    required TResult Function() refreshData,
  }) {
    return refreshData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title, String category)? addTask,
    TResult? Function(String taskId)? toggleTaskCompletion,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(String category)? changeCategory,
    TResult? Function()? refreshData,
  }) {
    return refreshData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title, String category)? addTask,
    TResult Function(String taskId)? toggleTaskCompletion,
    TResult Function(String taskId)? deleteTask,
    TResult Function(String category)? changeCategory,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_ToggleTaskCompletion value) toggleTaskCompletion,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ChangeCategory value) changeCategory,
    required TResult Function(_RefreshData value) refreshData,
  }) {
    return refreshData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_ToggleTaskCompletion value)? toggleTaskCompletion,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ChangeCategory value)? changeCategory,
    TResult? Function(_RefreshData value)? refreshData,
  }) {
    return refreshData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_ToggleTaskCompletion value)? toggleTaskCompletion,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ChangeCategory value)? changeCategory,
    TResult Function(_RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData(this);
    }
    return orElse();
  }
}

abstract class _RefreshData implements HomeEvent {
  const factory _RefreshData() = _$RefreshDataImpl;
}

/// @nodoc
mixin _$Task {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {String id,
      String title,
      String category,
      bool isCompleted,
      DateTime createdAt});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? category = null,
    Object? isCompleted = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
          _$TaskImpl value, $Res Function(_$TaskImpl) then) =
      __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String category,
      bool isCompleted,
      DateTime createdAt});
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? category = null,
    Object? isCompleted = null,
    Object? createdAt = null,
  }) {
    return _then(_$TaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$TaskImpl implements _Task {
  const _$TaskImpl(
      {required this.id,
      required this.title,
      required this.category,
      this.isCompleted = false,
      required this.createdAt});

  @override
  final String id;
  @override
  final String title;
  @override
  final String category;
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Task(id: $id, title: $title, category: $category, isCompleted: $isCompleted, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, category, isCompleted, createdAt);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);
}

abstract class _Task implements Task {
  const factory _Task(
      {required final String id,
      required final String title,
      required final String category,
      final bool isCompleted,
      required final DateTime createdAt}) = _$TaskImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get category;
  @override
  bool get isCompleted;
  @override
  DateTime get createdAt;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  List<Task> get tasks => throw _privateConstructorUsedError;
  String get selectedCategory => throw _privateConstructorUsedError;
  List<String> get features => throw _privateConstructorUsedError;
  Status get statusLoadData => throw _privateConstructorUsedError;
  Status get statusRefreshData => throw _privateConstructorUsedError;
  Status get statusAddTask => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<Task> tasks,
      String selectedCategory,
      List<String> features,
      Status statusLoadData,
      Status statusRefreshData,
      Status statusAddTask});

  $StatusCopyWith<$Res> get statusLoadData;
  $StatusCopyWith<$Res> get statusRefreshData;
  $StatusCopyWith<$Res> get statusAddTask;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? selectedCategory = null,
    Object? features = null,
    Object? statusLoadData = null,
    Object? statusRefreshData = null,
    Object? statusAddTask = null,
  }) {
    return _then(_value.copyWith(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      statusLoadData: null == statusLoadData
          ? _value.statusLoadData
          : statusLoadData // ignore: cast_nullable_to_non_nullable
              as Status,
      statusRefreshData: null == statusRefreshData
          ? _value.statusRefreshData
          : statusRefreshData // ignore: cast_nullable_to_non_nullable
              as Status,
      statusAddTask: null == statusAddTask
          ? _value.statusAddTask
          : statusAddTask // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusLoadData {
    return $StatusCopyWith<$Res>(_value.statusLoadData, (value) {
      return _then(_value.copyWith(statusLoadData: value) as $Val);
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusRefreshData {
    return $StatusCopyWith<$Res>(_value.statusRefreshData, (value) {
      return _then(_value.copyWith(statusRefreshData: value) as $Val);
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusAddTask {
    return $StatusCopyWith<$Res>(_value.statusAddTask, (value) {
      return _then(_value.copyWith(statusAddTask: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Task> tasks,
      String selectedCategory,
      List<String> features,
      Status statusLoadData,
      Status statusRefreshData,
      Status statusAddTask});

  @override
  $StatusCopyWith<$Res> get statusLoadData;
  @override
  $StatusCopyWith<$Res> get statusRefreshData;
  @override
  $StatusCopyWith<$Res> get statusAddTask;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? selectedCategory = null,
    Object? features = null,
    Object? statusLoadData = null,
    Object? statusRefreshData = null,
    Object? statusAddTask = null,
  }) {
    return _then(_$HomeStateImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String,
      features: null == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      statusLoadData: null == statusLoadData
          ? _value.statusLoadData
          : statusLoadData // ignore: cast_nullable_to_non_nullable
              as Status,
      statusRefreshData: null == statusRefreshData
          ? _value.statusRefreshData
          : statusRefreshData // ignore: cast_nullable_to_non_nullable
              as Status,
      statusAddTask: null == statusAddTask
          ? _value.statusAddTask
          : statusAddTask // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {final List<Task> tasks = const [],
      this.selectedCategory = 'All',
      final List<String> features = const [],
      this.statusLoadData = const Status.idle(),
      this.statusRefreshData = const Status.idle(),
      this.statusAddTask = const Status.idle()})
      : _tasks = tasks,
        _features = features;

  final List<Task> _tasks;
  @override
  @JsonKey()
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  @JsonKey()
  final String selectedCategory;
  final List<String> _features;
  @override
  @JsonKey()
  List<String> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  @override
  @JsonKey()
  final Status statusLoadData;
  @override
  @JsonKey()
  final Status statusRefreshData;
  @override
  @JsonKey()
  final Status statusAddTask;

  @override
  String toString() {
    return 'HomeState(tasks: $tasks, selectedCategory: $selectedCategory, features: $features, statusLoadData: $statusLoadData, statusRefreshData: $statusRefreshData, statusAddTask: $statusAddTask)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            (identical(other.statusLoadData, statusLoadData) ||
                other.statusLoadData == statusLoadData) &&
            (identical(other.statusRefreshData, statusRefreshData) ||
                other.statusRefreshData == statusRefreshData) &&
            (identical(other.statusAddTask, statusAddTask) ||
                other.statusAddTask == statusAddTask));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tasks),
      selectedCategory,
      const DeepCollectionEquality().hash(_features),
      statusLoadData,
      statusRefreshData,
      statusAddTask);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final List<Task> tasks,
      final String selectedCategory,
      final List<String> features,
      final Status statusLoadData,
      final Status statusRefreshData,
      final Status statusAddTask}) = _$HomeStateImpl;

  @override
  List<Task> get tasks;
  @override
  String get selectedCategory;
  @override
  List<String> get features;
  @override
  Status get statusLoadData;
  @override
  Status get statusRefreshData;
  @override
  Status get statusAddTask;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
