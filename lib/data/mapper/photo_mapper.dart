import 'package:image_search_app_flutter/data/dto/photo_result_dto.dart';
import 'package:image_search_app_flutter/domain/model/photo.dart';

extension ToPhoto on Hit {
  Photo toPhoto() {
    return Photo(
        id: id!.toInt(),
        url: previewUrl ?? '',
        tags: tags ?? '',
        views: views ?? 0,
    );
  }
}