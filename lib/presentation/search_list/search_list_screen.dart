import 'package:flutter/material.dart';
import 'package:image_search_app_flutter/presentation/search_list/search_list_view_model.dart';
import 'package:provider/provider.dart';

import 'components/image_card_widget.dart';

class SearchListScreen extends StatefulWidget {
  const SearchListScreen({super.key});

  @override
  State<SearchListScreen> createState() => _SearchListScreenState();
}

class _SearchListScreenState extends State<SearchListScreen> {
  final _queryTextEditingController = TextEditingController();

  @override
  void dispose() {
    _queryTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SearchListViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: Text('이미지 검색하기'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _queryTextEditingController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: '검색',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    final query = _queryTextEditingController.text;
                    viewModel.onSearch(query);
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: state.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),)
                  : GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: state.photos
                          .map((e) => ImageCardWidget(photo: e))
                          .toList(),
                    ),
            ),
          )
        ],
      ),
    );
  }
}
