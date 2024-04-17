import 'package:flutter/cupertino.dart';
import 'package:image_search_app_flutter/data/data_source/photo_data_source.dart';
import 'package:image_search_app_flutter/domain/repository/photo_repository.dart';
import 'package:image_search_app_flutter/presentation/search_list/search_list_state.dart';

import '../../domain/model/photo.dart';

class SearchListViewModel with ChangeNotifier {
  final PhotoRepository _photoRepository;

  SearchListViewModel({required PhotoRepository photoRepository})
      : _photoRepository = photoRepository;

  SearchListState _state = const SearchListState();

  SearchListState get state => _state;

  void onSearch(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    _state = state.copyWith(
      photos: await _photoRepository.getPhotos(query),
      isLoading: false,
    );
    notifyListeners();
  }
}
