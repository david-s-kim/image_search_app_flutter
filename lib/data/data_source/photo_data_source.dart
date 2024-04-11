import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/photo_result_dto.dart';

class PhotoDataSource {
  final _baseUrl = 'https://pixabay.com/api/';

  Future<PhotoResultDto> getPhotoResult(String query) async {
    final response = await http.get(Uri.parse(
        '$_baseUrl?key=43171373-5c54586eb6b3236716e54d34c&q=$query&image_type=photo&pretty=true'));

    return PhotoResultDto.fromJson(jsonDecode(response.body));
  }
}
