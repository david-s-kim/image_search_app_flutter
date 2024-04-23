import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_search_app_flutter/02_stream_world_time_api/core/router.dart';
import 'package:image_search_app_flutter/di/di_setup.dart';

void main() {
  diSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
        useMaterial3: true,
      ),
    );
  }
}