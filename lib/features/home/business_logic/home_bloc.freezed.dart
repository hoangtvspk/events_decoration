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
    required TResult Function(int index) updateGreetingCardIndex,
    required TResult Function(int totalCards) flipGreetingCardForward,
    required TResult Function(int totalCards) flipGreetingCardBackward,
    required TResult Function() resetGreetingCardIndex,
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
    TResult? Function(int index)? updateGreetingCardIndex,
    TResult? Function(int totalCards)? flipGreetingCardForward,
    TResult? Function(int totalCards)? flipGreetingCardBackward,
    TResult? Function()? resetGreetingCardIndex,
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
    TResult Function(int index)? updateGreetingCardIndex,
    TResult Function(int totalCards)? flipGreetingCardForward,
    TResult Function(int totalCards)? flipGreetingCardBackward,
    TResult Function()? resetGreetingCardIndex,
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
    required TResult Function(_UpdateGreetingCardIndex value)
        updateGreetingCardIndex,
    required TResult Function(_FlipGreetingCardForward value)
        flipGreetingCardForward,
    required TResult Function(_FlipGreetingCardBackward value)
        flipGreetingCardBackward,
    required TResult Function(_ResetGreetingCardIndex value)
        resetGreetingCardIndex,
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
    TResult? Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult? Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult? Function(_FlipGreetingCardBackward value)?
        flipGreetingCardBackward,
    TResult? Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
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
    TResult Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult Function(_FlipGreetingCardBackward value)? flipGreetingCardBackward,
    TResult Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
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
    required TResult Function(int index) updateGreetingCardIndex,
    required TResult Function(int totalCards) flipGreetingCardForward,
    required TResult Function(int totalCards) flipGreetingCardBackward,
    required TResult Function() resetGreetingCardIndex,
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
    TResult? Function(int index)? updateGreetingCardIndex,
    TResult? Function(int totalCards)? flipGreetingCardForward,
    TResult? Function(int totalCards)? flipGreetingCardBackward,
    TResult? Function()? resetGreetingCardIndex,
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
    TResult Function(int index)? updateGreetingCardIndex,
    TResult Function(int totalCards)? flipGreetingCardForward,
    TResult Function(int totalCards)? flipGreetingCardBackward,
    TResult Function()? resetGreetingCardIndex,
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
    required TResult Function(_UpdateGreetingCardIndex value)
        updateGreetingCardIndex,
    required TResult Function(_FlipGreetingCardForward value)
        flipGreetingCardForward,
    required TResult Function(_FlipGreetingCardBackward value)
        flipGreetingCardBackward,
    required TResult Function(_ResetGreetingCardIndex value)
        resetGreetingCardIndex,
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
    TResult? Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult? Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult? Function(_FlipGreetingCardBackward value)?
        flipGreetingCardBackward,
    TResult? Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
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
    TResult Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult Function(_FlipGreetingCardBackward value)? flipGreetingCardBackward,
    TResult Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
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
    required TResult Function(int index) updateGreetingCardIndex,
    required TResult Function(int totalCards) flipGreetingCardForward,
    required TResult Function(int totalCards) flipGreetingCardBackward,
    required TResult Function() resetGreetingCardIndex,
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
    TResult? Function(int index)? updateGreetingCardIndex,
    TResult? Function(int totalCards)? flipGreetingCardForward,
    TResult? Function(int totalCards)? flipGreetingCardBackward,
    TResult? Function()? resetGreetingCardIndex,
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
    TResult Function(int index)? updateGreetingCardIndex,
    TResult Function(int totalCards)? flipGreetingCardForward,
    TResult Function(int totalCards)? flipGreetingCardBackward,
    TResult Function()? resetGreetingCardIndex,
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
    required TResult Function(_UpdateGreetingCardIndex value)
        updateGreetingCardIndex,
    required TResult Function(_FlipGreetingCardForward value)
        flipGreetingCardForward,
    required TResult Function(_FlipGreetingCardBackward value)
        flipGreetingCardBackward,
    required TResult Function(_ResetGreetingCardIndex value)
        resetGreetingCardIndex,
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
    TResult? Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult? Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult? Function(_FlipGreetingCardBackward value)?
        flipGreetingCardBackward,
    TResult? Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
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
    TResult Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult Function(_FlipGreetingCardBackward value)? flipGreetingCardBackward,
    TResult Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
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
    required TResult Function(int index) updateGreetingCardIndex,
    required TResult Function(int totalCards) flipGreetingCardForward,
    required TResult Function(int totalCards) flipGreetingCardBackward,
    required TResult Function() resetGreetingCardIndex,
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
    TResult? Function(int index)? updateGreetingCardIndex,
    TResult? Function(int totalCards)? flipGreetingCardForward,
    TResult? Function(int totalCards)? flipGreetingCardBackward,
    TResult? Function()? resetGreetingCardIndex,
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
    TResult Function(int index)? updateGreetingCardIndex,
    TResult Function(int totalCards)? flipGreetingCardForward,
    TResult Function(int totalCards)? flipGreetingCardBackward,
    TResult Function()? resetGreetingCardIndex,
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
    required TResult Function(_UpdateGreetingCardIndex value)
        updateGreetingCardIndex,
    required TResult Function(_FlipGreetingCardForward value)
        flipGreetingCardForward,
    required TResult Function(_FlipGreetingCardBackward value)
        flipGreetingCardBackward,
    required TResult Function(_ResetGreetingCardIndex value)
        resetGreetingCardIndex,
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
    TResult? Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult? Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult? Function(_FlipGreetingCardBackward value)?
        flipGreetingCardBackward,
    TResult? Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
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
    TResult Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult Function(_FlipGreetingCardBackward value)? flipGreetingCardBackward,
    TResult Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
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
    required TResult Function(int index) updateGreetingCardIndex,
    required TResult Function(int totalCards) flipGreetingCardForward,
    required TResult Function(int totalCards) flipGreetingCardBackward,
    required TResult Function() resetGreetingCardIndex,
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
    TResult? Function(int index)? updateGreetingCardIndex,
    TResult? Function(int totalCards)? flipGreetingCardForward,
    TResult? Function(int totalCards)? flipGreetingCardBackward,
    TResult? Function()? resetGreetingCardIndex,
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
    TResult Function(int index)? updateGreetingCardIndex,
    TResult Function(int totalCards)? flipGreetingCardForward,
    TResult Function(int totalCards)? flipGreetingCardBackward,
    TResult Function()? resetGreetingCardIndex,
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
    required TResult Function(_UpdateGreetingCardIndex value)
        updateGreetingCardIndex,
    required TResult Function(_FlipGreetingCardForward value)
        flipGreetingCardForward,
    required TResult Function(_FlipGreetingCardBackward value)
        flipGreetingCardBackward,
    required TResult Function(_ResetGreetingCardIndex value)
        resetGreetingCardIndex,
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
    TResult? Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult? Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult? Function(_FlipGreetingCardBackward value)?
        flipGreetingCardBackward,
    TResult? Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
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
    TResult Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult Function(_FlipGreetingCardBackward value)? flipGreetingCardBackward,
    TResult Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
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
    required TResult Function(int index) updateGreetingCardIndex,
    required TResult Function(int totalCards) flipGreetingCardForward,
    required TResult Function(int totalCards) flipGreetingCardBackward,
    required TResult Function() resetGreetingCardIndex,
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
    TResult? Function(int index)? updateGreetingCardIndex,
    TResult? Function(int totalCards)? flipGreetingCardForward,
    TResult? Function(int totalCards)? flipGreetingCardBackward,
    TResult? Function()? resetGreetingCardIndex,
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
    TResult Function(int index)? updateGreetingCardIndex,
    TResult Function(int totalCards)? flipGreetingCardForward,
    TResult Function(int totalCards)? flipGreetingCardBackward,
    TResult Function()? resetGreetingCardIndex,
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
    required TResult Function(_UpdateGreetingCardIndex value)
        updateGreetingCardIndex,
    required TResult Function(_FlipGreetingCardForward value)
        flipGreetingCardForward,
    required TResult Function(_FlipGreetingCardBackward value)
        flipGreetingCardBackward,
    required TResult Function(_ResetGreetingCardIndex value)
        resetGreetingCardIndex,
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
    TResult? Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult? Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult? Function(_FlipGreetingCardBackward value)?
        flipGreetingCardBackward,
    TResult? Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
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
    TResult Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult Function(_FlipGreetingCardBackward value)? flipGreetingCardBackward,
    TResult Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
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
    required TResult Function(int index) updateGreetingCardIndex,
    required TResult Function(int totalCards) flipGreetingCardForward,
    required TResult Function(int totalCards) flipGreetingCardBackward,
    required TResult Function() resetGreetingCardIndex,
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
    TResult? Function(int index)? updateGreetingCardIndex,
    TResult? Function(int totalCards)? flipGreetingCardForward,
    TResult? Function(int totalCards)? flipGreetingCardBackward,
    TResult? Function()? resetGreetingCardIndex,
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
    TResult Function(int index)? updateGreetingCardIndex,
    TResult Function(int totalCards)? flipGreetingCardForward,
    TResult Function(int totalCards)? flipGreetingCardBackward,
    TResult Function()? resetGreetingCardIndex,
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
    required TResult Function(_UpdateGreetingCardIndex value)
        updateGreetingCardIndex,
    required TResult Function(_FlipGreetingCardForward value)
        flipGreetingCardForward,
    required TResult Function(_FlipGreetingCardBackward value)
        flipGreetingCardBackward,
    required TResult Function(_ResetGreetingCardIndex value)
        resetGreetingCardIndex,
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
    TResult? Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult? Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult? Function(_FlipGreetingCardBackward value)?
        flipGreetingCardBackward,
    TResult? Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
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
    TResult Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult Function(_FlipGreetingCardBackward value)? flipGreetingCardBackward,
    TResult Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
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
abstract class _$$UpdateGreetingCardIndexImplCopyWith<$Res> {
  factory _$$UpdateGreetingCardIndexImplCopyWith(
          _$UpdateGreetingCardIndexImpl value,
          $Res Function(_$UpdateGreetingCardIndexImpl) then) =
      __$$UpdateGreetingCardIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$UpdateGreetingCardIndexImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateGreetingCardIndexImpl>
    implements _$$UpdateGreetingCardIndexImplCopyWith<$Res> {
  __$$UpdateGreetingCardIndexImplCopyWithImpl(
      _$UpdateGreetingCardIndexImpl _value,
      $Res Function(_$UpdateGreetingCardIndexImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$UpdateGreetingCardIndexImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateGreetingCardIndexImpl implements _UpdateGreetingCardIndex {
  const _$UpdateGreetingCardIndexImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.updateGreetingCardIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGreetingCardIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGreetingCardIndexImplCopyWith<_$UpdateGreetingCardIndexImpl>
      get copyWith => __$$UpdateGreetingCardIndexImplCopyWithImpl<
          _$UpdateGreetingCardIndexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title, String category) addTask,
    required TResult Function(String taskId) toggleTaskCompletion,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(String category) changeCategory,
    required TResult Function() refreshData,
    required TResult Function(int index) updateGreetingCardIndex,
    required TResult Function(int totalCards) flipGreetingCardForward,
    required TResult Function(int totalCards) flipGreetingCardBackward,
    required TResult Function() resetGreetingCardIndex,
  }) {
    return updateGreetingCardIndex(index);
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
    TResult? Function(int index)? updateGreetingCardIndex,
    TResult? Function(int totalCards)? flipGreetingCardForward,
    TResult? Function(int totalCards)? flipGreetingCardBackward,
    TResult? Function()? resetGreetingCardIndex,
  }) {
    return updateGreetingCardIndex?.call(index);
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
    TResult Function(int index)? updateGreetingCardIndex,
    TResult Function(int totalCards)? flipGreetingCardForward,
    TResult Function(int totalCards)? flipGreetingCardBackward,
    TResult Function()? resetGreetingCardIndex,
    required TResult orElse(),
  }) {
    if (updateGreetingCardIndex != null) {
      return updateGreetingCardIndex(index);
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
    required TResult Function(_UpdateGreetingCardIndex value)
        updateGreetingCardIndex,
    required TResult Function(_FlipGreetingCardForward value)
        flipGreetingCardForward,
    required TResult Function(_FlipGreetingCardBackward value)
        flipGreetingCardBackward,
    required TResult Function(_ResetGreetingCardIndex value)
        resetGreetingCardIndex,
  }) {
    return updateGreetingCardIndex(this);
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
    TResult? Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult? Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult? Function(_FlipGreetingCardBackward value)?
        flipGreetingCardBackward,
    TResult? Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
  }) {
    return updateGreetingCardIndex?.call(this);
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
    TResult Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult Function(_FlipGreetingCardBackward value)? flipGreetingCardBackward,
    TResult Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
    required TResult orElse(),
  }) {
    if (updateGreetingCardIndex != null) {
      return updateGreetingCardIndex(this);
    }
    return orElse();
  }
}

abstract class _UpdateGreetingCardIndex implements HomeEvent {
  const factory _UpdateGreetingCardIndex(final int index) =
      _$UpdateGreetingCardIndexImpl;

  int get index;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateGreetingCardIndexImplCopyWith<_$UpdateGreetingCardIndexImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FlipGreetingCardForwardImplCopyWith<$Res> {
  factory _$$FlipGreetingCardForwardImplCopyWith(
          _$FlipGreetingCardForwardImpl value,
          $Res Function(_$FlipGreetingCardForwardImpl) then) =
      __$$FlipGreetingCardForwardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int totalCards});
}

/// @nodoc
class __$$FlipGreetingCardForwardImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FlipGreetingCardForwardImpl>
    implements _$$FlipGreetingCardForwardImplCopyWith<$Res> {
  __$$FlipGreetingCardForwardImplCopyWithImpl(
      _$FlipGreetingCardForwardImpl _value,
      $Res Function(_$FlipGreetingCardForwardImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCards = null,
  }) {
    return _then(_$FlipGreetingCardForwardImpl(
      null == totalCards
          ? _value.totalCards
          : totalCards // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FlipGreetingCardForwardImpl implements _FlipGreetingCardForward {
  const _$FlipGreetingCardForwardImpl(this.totalCards);

  @override
  final int totalCards;

  @override
  String toString() {
    return 'HomeEvent.flipGreetingCardForward(totalCards: $totalCards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlipGreetingCardForwardImpl &&
            (identical(other.totalCards, totalCards) ||
                other.totalCards == totalCards));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalCards);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlipGreetingCardForwardImplCopyWith<_$FlipGreetingCardForwardImpl>
      get copyWith => __$$FlipGreetingCardForwardImplCopyWithImpl<
          _$FlipGreetingCardForwardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title, String category) addTask,
    required TResult Function(String taskId) toggleTaskCompletion,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(String category) changeCategory,
    required TResult Function() refreshData,
    required TResult Function(int index) updateGreetingCardIndex,
    required TResult Function(int totalCards) flipGreetingCardForward,
    required TResult Function(int totalCards) flipGreetingCardBackward,
    required TResult Function() resetGreetingCardIndex,
  }) {
    return flipGreetingCardForward(totalCards);
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
    TResult? Function(int index)? updateGreetingCardIndex,
    TResult? Function(int totalCards)? flipGreetingCardForward,
    TResult? Function(int totalCards)? flipGreetingCardBackward,
    TResult? Function()? resetGreetingCardIndex,
  }) {
    return flipGreetingCardForward?.call(totalCards);
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
    TResult Function(int index)? updateGreetingCardIndex,
    TResult Function(int totalCards)? flipGreetingCardForward,
    TResult Function(int totalCards)? flipGreetingCardBackward,
    TResult Function()? resetGreetingCardIndex,
    required TResult orElse(),
  }) {
    if (flipGreetingCardForward != null) {
      return flipGreetingCardForward(totalCards);
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
    required TResult Function(_UpdateGreetingCardIndex value)
        updateGreetingCardIndex,
    required TResult Function(_FlipGreetingCardForward value)
        flipGreetingCardForward,
    required TResult Function(_FlipGreetingCardBackward value)
        flipGreetingCardBackward,
    required TResult Function(_ResetGreetingCardIndex value)
        resetGreetingCardIndex,
  }) {
    return flipGreetingCardForward(this);
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
    TResult? Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult? Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult? Function(_FlipGreetingCardBackward value)?
        flipGreetingCardBackward,
    TResult? Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
  }) {
    return flipGreetingCardForward?.call(this);
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
    TResult Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult Function(_FlipGreetingCardBackward value)? flipGreetingCardBackward,
    TResult Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
    required TResult orElse(),
  }) {
    if (flipGreetingCardForward != null) {
      return flipGreetingCardForward(this);
    }
    return orElse();
  }
}

abstract class _FlipGreetingCardForward implements HomeEvent {
  const factory _FlipGreetingCardForward(final int totalCards) =
      _$FlipGreetingCardForwardImpl;

  int get totalCards;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlipGreetingCardForwardImplCopyWith<_$FlipGreetingCardForwardImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FlipGreetingCardBackwardImplCopyWith<$Res> {
  factory _$$FlipGreetingCardBackwardImplCopyWith(
          _$FlipGreetingCardBackwardImpl value,
          $Res Function(_$FlipGreetingCardBackwardImpl) then) =
      __$$FlipGreetingCardBackwardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int totalCards});
}

/// @nodoc
class __$$FlipGreetingCardBackwardImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FlipGreetingCardBackwardImpl>
    implements _$$FlipGreetingCardBackwardImplCopyWith<$Res> {
  __$$FlipGreetingCardBackwardImplCopyWithImpl(
      _$FlipGreetingCardBackwardImpl _value,
      $Res Function(_$FlipGreetingCardBackwardImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCards = null,
  }) {
    return _then(_$FlipGreetingCardBackwardImpl(
      null == totalCards
          ? _value.totalCards
          : totalCards // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FlipGreetingCardBackwardImpl implements _FlipGreetingCardBackward {
  const _$FlipGreetingCardBackwardImpl(this.totalCards);

  @override
  final int totalCards;

  @override
  String toString() {
    return 'HomeEvent.flipGreetingCardBackward(totalCards: $totalCards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlipGreetingCardBackwardImpl &&
            (identical(other.totalCards, totalCards) ||
                other.totalCards == totalCards));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalCards);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlipGreetingCardBackwardImplCopyWith<_$FlipGreetingCardBackwardImpl>
      get copyWith => __$$FlipGreetingCardBackwardImplCopyWithImpl<
          _$FlipGreetingCardBackwardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title, String category) addTask,
    required TResult Function(String taskId) toggleTaskCompletion,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(String category) changeCategory,
    required TResult Function() refreshData,
    required TResult Function(int index) updateGreetingCardIndex,
    required TResult Function(int totalCards) flipGreetingCardForward,
    required TResult Function(int totalCards) flipGreetingCardBackward,
    required TResult Function() resetGreetingCardIndex,
  }) {
    return flipGreetingCardBackward(totalCards);
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
    TResult? Function(int index)? updateGreetingCardIndex,
    TResult? Function(int totalCards)? flipGreetingCardForward,
    TResult? Function(int totalCards)? flipGreetingCardBackward,
    TResult? Function()? resetGreetingCardIndex,
  }) {
    return flipGreetingCardBackward?.call(totalCards);
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
    TResult Function(int index)? updateGreetingCardIndex,
    TResult Function(int totalCards)? flipGreetingCardForward,
    TResult Function(int totalCards)? flipGreetingCardBackward,
    TResult Function()? resetGreetingCardIndex,
    required TResult orElse(),
  }) {
    if (flipGreetingCardBackward != null) {
      return flipGreetingCardBackward(totalCards);
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
    required TResult Function(_UpdateGreetingCardIndex value)
        updateGreetingCardIndex,
    required TResult Function(_FlipGreetingCardForward value)
        flipGreetingCardForward,
    required TResult Function(_FlipGreetingCardBackward value)
        flipGreetingCardBackward,
    required TResult Function(_ResetGreetingCardIndex value)
        resetGreetingCardIndex,
  }) {
    return flipGreetingCardBackward(this);
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
    TResult? Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult? Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult? Function(_FlipGreetingCardBackward value)?
        flipGreetingCardBackward,
    TResult? Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
  }) {
    return flipGreetingCardBackward?.call(this);
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
    TResult Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult Function(_FlipGreetingCardBackward value)? flipGreetingCardBackward,
    TResult Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
    required TResult orElse(),
  }) {
    if (flipGreetingCardBackward != null) {
      return flipGreetingCardBackward(this);
    }
    return orElse();
  }
}

abstract class _FlipGreetingCardBackward implements HomeEvent {
  const factory _FlipGreetingCardBackward(final int totalCards) =
      _$FlipGreetingCardBackwardImpl;

  int get totalCards;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlipGreetingCardBackwardImplCopyWith<_$FlipGreetingCardBackwardImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetGreetingCardIndexImplCopyWith<$Res> {
  factory _$$ResetGreetingCardIndexImplCopyWith(
          _$ResetGreetingCardIndexImpl value,
          $Res Function(_$ResetGreetingCardIndexImpl) then) =
      __$$ResetGreetingCardIndexImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetGreetingCardIndexImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ResetGreetingCardIndexImpl>
    implements _$$ResetGreetingCardIndexImplCopyWith<$Res> {
  __$$ResetGreetingCardIndexImplCopyWithImpl(
      _$ResetGreetingCardIndexImpl _value,
      $Res Function(_$ResetGreetingCardIndexImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetGreetingCardIndexImpl implements _ResetGreetingCardIndex {
  const _$ResetGreetingCardIndexImpl();

  @override
  String toString() {
    return 'HomeEvent.resetGreetingCardIndex()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetGreetingCardIndexImpl);
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
    required TResult Function(int index) updateGreetingCardIndex,
    required TResult Function(int totalCards) flipGreetingCardForward,
    required TResult Function(int totalCards) flipGreetingCardBackward,
    required TResult Function() resetGreetingCardIndex,
  }) {
    return resetGreetingCardIndex();
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
    TResult? Function(int index)? updateGreetingCardIndex,
    TResult? Function(int totalCards)? flipGreetingCardForward,
    TResult? Function(int totalCards)? flipGreetingCardBackward,
    TResult? Function()? resetGreetingCardIndex,
  }) {
    return resetGreetingCardIndex?.call();
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
    TResult Function(int index)? updateGreetingCardIndex,
    TResult Function(int totalCards)? flipGreetingCardForward,
    TResult Function(int totalCards)? flipGreetingCardBackward,
    TResult Function()? resetGreetingCardIndex,
    required TResult orElse(),
  }) {
    if (resetGreetingCardIndex != null) {
      return resetGreetingCardIndex();
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
    required TResult Function(_UpdateGreetingCardIndex value)
        updateGreetingCardIndex,
    required TResult Function(_FlipGreetingCardForward value)
        flipGreetingCardForward,
    required TResult Function(_FlipGreetingCardBackward value)
        flipGreetingCardBackward,
    required TResult Function(_ResetGreetingCardIndex value)
        resetGreetingCardIndex,
  }) {
    return resetGreetingCardIndex(this);
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
    TResult? Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult? Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult? Function(_FlipGreetingCardBackward value)?
        flipGreetingCardBackward,
    TResult? Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
  }) {
    return resetGreetingCardIndex?.call(this);
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
    TResult Function(_UpdateGreetingCardIndex value)? updateGreetingCardIndex,
    TResult Function(_FlipGreetingCardForward value)? flipGreetingCardForward,
    TResult Function(_FlipGreetingCardBackward value)? flipGreetingCardBackward,
    TResult Function(_ResetGreetingCardIndex value)? resetGreetingCardIndex,
    required TResult orElse(),
  }) {
    if (resetGreetingCardIndex != null) {
      return resetGreetingCardIndex(this);
    }
    return orElse();
  }
}

abstract class _ResetGreetingCardIndex implements HomeEvent {
  const factory _ResetGreetingCardIndex() = _$ResetGreetingCardIndexImpl;
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
  int get greetingCardIndex => throw _privateConstructorUsedError;
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
      int greetingCardIndex,
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
    Object? greetingCardIndex = null,
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
      greetingCardIndex: null == greetingCardIndex
          ? _value.greetingCardIndex
          : greetingCardIndex // ignore: cast_nullable_to_non_nullable
              as int,
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
      int greetingCardIndex,
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
    Object? greetingCardIndex = null,
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
      greetingCardIndex: null == greetingCardIndex
          ? _value.greetingCardIndex
          : greetingCardIndex // ignore: cast_nullable_to_non_nullable
              as int,
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
      this.greetingCardIndex = 0,
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
  final int greetingCardIndex;
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
    return 'HomeState(tasks: $tasks, selectedCategory: $selectedCategory, features: $features, greetingCardIndex: $greetingCardIndex, statusLoadData: $statusLoadData, statusRefreshData: $statusRefreshData, statusAddTask: $statusAddTask)';
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
            (identical(other.greetingCardIndex, greetingCardIndex) ||
                other.greetingCardIndex == greetingCardIndex) &&
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
      greetingCardIndex,
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
      final int greetingCardIndex,
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
  int get greetingCardIndex;
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
