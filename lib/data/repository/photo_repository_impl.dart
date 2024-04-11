import 'package:image_search_app_flutter/data/data_source/photo_data_source.dart';
import 'package:image_search_app_flutter/data/mapper/photo_mapper.dart';
import 'package:image_search_app_flutter/data/model/photo.dart';
import 'package:image_search_app_flutter/data/repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoDataSource _photoDataSource;

  PhotoRepositoryImpl({required PhotoDataSource photoDataSource})
      : _photoDataSource = photoDataSource;

  @override
  Future<List<Photo>> getPhotos(String query) async {
    final dto = await _photoDataSource.getPhotoResult(query);

    if (dto.hits == null) {
      return [];
    }

    return dto.hits!.map((e) => e.toPhoto()).toList();
  }
}
