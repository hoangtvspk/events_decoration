import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoRouteWithBloc<B extends BlocBase<Object?>, R, D> {
  final String path;
  final Widget Function(BuildContext, GoRouterState) screenBuilder;
  final B Function(R repository, GoRouterState state) createBloc;
  final D Function() createDataSource;
  final R Function(D dataSource) createRepository;
  final Page<void> Function(Widget child, GoRouterState state)?
      transitionBuilder;

  const GoRouteWithBloc({
    required this.path,
    required this.screenBuilder,
    required this.createBloc,
    required this.createDataSource,
    required this.createRepository,
    this.transitionBuilder,
  });

  GoRoute build() {
    return GoRoute(
      path: path,
      pageBuilder: (context, state) {
        final screen = screenBuilder(context, state);
        final blocProvider = BlocProvider(
          create: (context) {
            final dataSource = createDataSource();
            final repository = createRepository(dataSource);
            return createBloc(repository, state);
          },
          child: screen,
        );

        if (transitionBuilder != null) {
          final page = transitionBuilder!(blocProvider, state);
          return page;
        }

        return MaterialPage(
          key: state.pageKey,
          child: blocProvider,
          name: path,
          arguments: state.extra,
        );
      },
    );
  }
}
