import 'package:bui_bloc/core/models/status/status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<_Started>(_onStarted);
    on<_AddTask>(_onAddTask);
    on<_ToggleTaskCompletion>(_onToggleTaskCompletion);
    on<_DeleteTask>(_onDeleteTask);
    on<_ChangeCategory>(_onChangeCategory);
    on<_RefreshData>(_onRefreshData);
  }

  Future<void> _onStarted(_Started event, Emitter<HomeState> emit) async {
    emit(state.copyWith(
      statusLoadData: const Status.loading(),
    ));

    // Simulate loading data
    await Future.delayed(const Duration(milliseconds: 1500));

    final features = [
      'Unidirectional Data Flow - Events → BLoC → States',
      'Separation of Concerns - Business logic isolated from UI',
      'Reactive Programming - Stream-based state management',
      'Testability - Easy to unit test business logic',
      'Predictable State Changes - Every state change is traceable',
      'Scalability - Works well with large applications',
    ];

    // Sample tasks
    final sampleTasks = [
      Task(
        id: '1',
        title: 'Learn BLoC Pattern',
        category: 'Learning',
        isCompleted: true,
        createdAt: DateTime.now().subtract(const Duration(hours: 2)),
      ),
      Task(
        id: '2',
        title: 'Build Flutter App',
        category: 'Development',
        isCompleted: false,
        createdAt: DateTime.now().subtract(const Duration(hours: 1)),
      ),
      Task(
        id: '3',
        title: 'Read Documentation',
        category: 'Learning',
        isCompleted: false,
        createdAt: DateTime.now(),
      ),
    ];

    emit(state.copyWith(
      features: features,
      tasks: sampleTasks,
      statusLoadData: const Status.success(),
    ));
  }

  Future<void> _onAddTask(
    _AddTask event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
      statusAddTask: const Status.loading(),
    ));

    // Simulate API call
    await Future.delayed(const Duration(milliseconds: 500));

    final newTask = Task(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: event.title,
      category: event.category,
      isCompleted: false,
      createdAt: DateTime.now(),
    );

    emit(state.copyWith(
      tasks: [newTask, ...state.tasks],
      statusAddTask: const Status.success(),
    ));

    // Reset status
    await Future.delayed(const Duration(milliseconds: 300));
    emit(state.copyWith(
      statusAddTask: const Status.idle(),
    ));
  }

  void _onToggleTaskCompletion(
    _ToggleTaskCompletion event,
    Emitter<HomeState> emit,
  ) {
    final updatedTasks = state.tasks.map((task) {
      if (task.id == event.taskId) {
        return task.copyWith(isCompleted: !task.isCompleted);
      }
      return task;
    }).toList();

    emit(state.copyWith(tasks: updatedTasks));
  }

  void _onDeleteTask(
    _DeleteTask event,
    Emitter<HomeState> emit,
  ) {
    final updatedTasks = state.tasks.where((task) => task.id != event.taskId).toList();
    emit(state.copyWith(tasks: updatedTasks));
  }

  void _onChangeCategory(
    _ChangeCategory event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(selectedCategory: event.category));
  }

  Future<void> _onRefreshData(
    _RefreshData event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
      statusRefreshData: const Status.loading(),
    ));

    // Simulate refresh
    await Future.delayed(const Duration(seconds: 1));

    emit(state.copyWith(
      statusRefreshData: const Status.success(),
    ));

    // Reset to idle after showing success
    await Future.delayed(const Duration(milliseconds: 500));
    emit(state.copyWith(
      statusRefreshData: const Status.idle(),
    ));
  }
}
