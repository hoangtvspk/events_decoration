part of 'home_bloc.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required String id,
    required String title,
    required String category,
    @Default(false) bool isCompleted,
    required DateTime createdAt,
  }) = _Task;
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<Task> tasks,
    @Default('All') String selectedCategory,
    @Default([]) List<String> features,
    @Default(Status.idle()) Status statusLoadData,
    @Default(Status.idle()) Status statusRefreshData,
    @Default(Status.idle()) Status statusAddTask,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState();
}
