import 'package:get_it/get_it.dart';
import 'package:image_search_app_flutter/domain/use_case/get_photos_use_case.dart';
import 'package:image_search_app_flutter/presentation/search_list/search_list_view_model.dart';

import '../data/data_source/photo_data_source.dart';
import '../data/repository/photo_repository_impl.dart';
import '../domain/repository/photo_repository.dart';

final getIt = GetIt.instance;

Future<void> diSetup() async {
  getIt.registerSingleton<PhotoDataSource>(PhotoDataSource());
  getIt.registerSingleton<PhotoRepository>(
      PhotoRepositoryImpl(photoDataSource: getIt()));
  getIt.registerSingleton<GetPhotosUseCase>(getIt());

  getIt.registerFactory<SearchListViewModel>(
    () => SearchListViewModel(getPhotosUseCase: getIt()),
  );
}
