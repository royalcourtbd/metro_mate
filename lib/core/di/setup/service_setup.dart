import 'package:get_it/get_it.dart';
import 'package:metro_mate/core/di/setup/setup_module.dart';
import 'package:metro_mate/core/service/error_message_handler_impl.dart';
import 'package:metro_mate/core/data/services/local_cache_service.dart';
import 'package:metro_mate/core/domain/contracts/error_message_handler.dart';
import 'package:metro_mate/core/service/time_service.dart';

class ServiceSetup implements SetupModule {
  final GetIt _serviceLocator;
  ServiceSetup(this._serviceLocator);

  @override
  Future<void> setup() async {
    _serviceLocator
      ..registerLazySingleton<ErrorMessageHandler>(
        () => ErrorMessageHandlerImpl(),
      )
      ..registerLazySingleton<TimeService>(() => TimeService())
      ..registerLazySingleton<LocalCacheService>(() => LocalCacheService());

    await LocalCacheService.setUp();
    await _setUpAudioService();
  }

  Future<void> _setUpAudioService() async {}
}
