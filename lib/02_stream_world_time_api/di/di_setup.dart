import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:image_search_app_flutter/02_stream_world_time_api/data/data_source/world_time_data_source.dart';
import 'package:image_search_app_flutter/02_stream_world_time_api/data/repository/seoul_time_repository_impl.dart';
import 'package:image_search_app_flutter/02_stream_world_time_api/domain/repository/time_repository.dart';
import 'package:image_search_app_flutter/02_stream_world_time_api/domain/use_case/fetch_periodic_time_use_case.dart';
import 'package:image_search_app_flutter/02_stream_world_time_api/presentation/main_view_model.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<WorldTimeDataSource>(WorldTimeDataSource(getIt()));
  getIt.registerSingleton<TimeRepository>(SeoulTimeRepositoryImpl(getIt()));

  getIt.registerSingleton<FetchPeriodicTimeUseCase>(
    FetchPeriodicTimeUseCase(second: 5, timeRepository: getIt()),
  );
  getIt.registerFactory(() => MainViewModel(fetchPeriodicTimeUseCase: getIt()));
}
