import 'package:flutter/cupertino.dart';
import 'package:image_search_app_flutter/data/data_source/photo_data_source.dart';
import 'package:image_search_app_flutter/data/repository/photo_repository.dart';

import '../../data/model/photo.dart';

class SearchListViewModel with ChangeNotifier {
  final PhotoRepository _photoRepository;

  List<Photo> _photos = [];

  SearchListViewModel({required PhotoRepository photoRepository}) : _photoRepository = photoRepository;

  List<Photo> get photos => List.unmodifiable(_photos);

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void onSearch(String query) async {
    _isLoading = true;
    notifyListeners();

    _photos = await _photoRepository.getPhotos(query);
    _isLoading = false;
    notifyListeners();
  }

}