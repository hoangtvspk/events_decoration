part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.addTask({
    required String title,
    required String category,
  }) = _AddTask;
  const factory HomeEvent.toggleTaskCompletion(String taskId) = _ToggleTaskCompletion;
  const factory HomeEvent.deleteTask(String taskId) = _DeleteTask;
  const factory HomeEvent.changeCategory(String category) = _ChangeCategory;
  const factory HomeEvent.refreshData() = _RefreshData;
}
