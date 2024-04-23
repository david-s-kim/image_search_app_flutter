import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../dto/time_dto.dart';

@RestApi(baseUrl: 'https://worldtimeapi.org/api/')
abstract class WorldTimeDataSource {
  factory WorldTimeDataSource(Dio dio, {String baseUrl}) = _WorldTimeDataSource;

  @GET('/timezone/{area}')
  Future<TimeDto> getTime(@Path() String area);
}