import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:image_search_app_flutter/di/di_setup.dart';
import 'package:image_search_app_flutter/presentation/search_list/search_list_screen.dart';
import 'package:image_search_app_flutter/presentation/search_list/search_list_view_model.dart';
import 'package:provider/provider.dart';

final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => ChangeNotifierProvider(
          create: (_) => getIt<SearchListViewModel>(),
          child: const SearchListScreen(),
        ),
      ),
    ],
);