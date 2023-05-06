import 'package:get_it/get_it.dart';
import 'package:base_architecture/home/repository/home_repo.dart';

import 'shared/services/navigation.service.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerFactory<HomeRepo>(() => HomeRepoImpl());
}
