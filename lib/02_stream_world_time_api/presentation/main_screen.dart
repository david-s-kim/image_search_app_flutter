import 'package:flutter/material.dart';
import 'package:image_search_app_flutter/02_stream_world_time_api/presentation/main_view_model.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  void initState() {
    super.initState();

    Future.microtask(() => context.read<MainViewModel>().fetchTime());
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Sample'),
      ),
      body: Center(
        child: Text(
          viewModel.time.toString(),
          style: const TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
