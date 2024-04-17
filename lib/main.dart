import 'package:flutter/material.dart';
import 'package:image_search_app_flutter/data/data_source/photo_data_source.dart';
import 'package:image_search_app_flutter/data/repository/photo_repository_impl.dart';
import 'package:image_search_app_flutter/presentation/search_list/search_list_view_model.dart';
import 'package:provider/provider.dart';

import 'presentation/search_list/search_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (_) => SearchListViewModel(
          photoRepository: PhotoRepositoryImpl(
            photoDataSource: PhotoDataSource(),
          ),
        ),
        child: const SearchListScreen(),
      ),
    );
  }
}
