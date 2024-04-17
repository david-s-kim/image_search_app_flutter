import 'package:image_search_app_flutter/domain/model/photo.dart';
import 'package:image_search_app_flutter/domain/repository/photo_repository.dart';
import 'package:collection/collection.dart';

class GetPhotosUseCase {
  final PhotoRepository _photoRepository;

  GetPhotosUseCase(this._photoRepository);

  Future<List<Photo>> execute(String query) async {
      final result = await _photoRepository.getPhotos(query);
    return result.sorted((a, b) => b.views.compareTo(a.views)).take(5).toList();
  }
}