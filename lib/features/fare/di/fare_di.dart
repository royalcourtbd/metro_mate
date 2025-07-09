import 'package:metro_mate/core/base/base_presenter.dart';
import 'package:metro_mate/features/fare/data/repositories/fare_repository_impl.dart';
import 'package:metro_mate/features/fare/domain/repositories/fare_repository.dart';
import 'package:metro_mate/features/fare/presentation/presenter/fare_presenter.dart';

import 'package:get_it/get_it.dart';

class FareDi {
  static Future<void> setup(GetIt serviceLocator) async {
    //  Data Source

    //  Repository
    serviceLocator.registerLazySingleton<FareRepository>(
      () => FareRepositoryImpl(),
    );

    // Use Cases

    // Presenters
    serviceLocator.registerFactory(
      () => loadPresenter(FarePresenter()),
    );
  }
}
