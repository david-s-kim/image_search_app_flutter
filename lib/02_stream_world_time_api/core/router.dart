import 'dart:js';

import 'package:go_router/go_router.dart';
import 'package:image_search_app_flutter/di/di_setup.dart';
import 'package:provider/provider.dart';

import '../presentation/main_screen.dart';
import '../presentation/main_view_model.dart';

// GoRouter configuration
final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => ChangeNotifierProvider(
      create: (_) => getIt<MainViewModel>(),
      child: const MainScreen(),
    ),
  ),
]);
