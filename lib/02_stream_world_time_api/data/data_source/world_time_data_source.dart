import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:json_annotation/json_annotation.dart';

import '../dto/time_dto.dart';

part 'world_time_data_source.g.dart';

@RestApi(baseUrl: 'https://worldtimeapi.org/api/')
abstract class WorldTimeDataSource {
  factory WorldTimeDataSource(Dio dio, {String baseUrl}) = _WorldTimeDataSource;

  @GET('/timezone/{area}')
  Future<TimeDto> getTime(@Path() String area);
}