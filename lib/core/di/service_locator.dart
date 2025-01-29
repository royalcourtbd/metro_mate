// Implementation Note:
//
// The app utilizes the **Service Locator Pattern** to manage dependencies.
//
// The Service Locator Pattern is a design pattern that improves modularity and
// maintainability in our codebase. By decoupling the code from direct dependency
// references, it allows for easier substitution or addition of dependencies in
// the future.
//
// To understand the Service Locator Pattern in more detail, you can refer to
// the following resource: https://stackify.com/service-locator-pattern/.
//
// This pattern simplifies the process of replacing or adding dependencies.
// Instead of modifying every object that relies on a particular dependency, we
// only need to update the service locator itself. This centralization reduces
// code changes and minimizes potential errors.
import 'package:get_it/get_it.dart';
import 'package:metro_mate/core/base/base_presenter.dart';
import 'package:metro_mate/data/datasources/local/user_data_local_data_source.dart';
import 'package:metro_mate/data/repositories/user_data_repository_impl.dart';
import 'package:metro_mate/data/services/backend_as_a_service.dart';
import 'package:metro_mate/data/services/error_message_handler_impl.dart';
import 'package:metro_mate/data/services/local_cache_service.dart';
import 'package:metro_mate/domain/repositories/user_data_repository.dart';
import 'package:metro_mate/domain/service/error_message_handler.dart';
import 'package:metro_mate/domain/service/time_service.dart';
import 'package:metro_mate/domain/usecases/determine_first_run_use_case.dart';
import 'package:metro_mate/domain/usecases/save_first_time_use_case.dart';

final GetIt _serviceLocator = GetIt.instance;

// This code implements a wrapper function around the `get` function from the
// `get_it` package. The purpose of this wrapper is to provide a simplified and
// centralized way of retrieving registered instances of classes.
//
// By using this wrapper instead of directly calling the get function, we avoid
// tight coupling to the specific service locator implementation, which can lead
// to vendor lock-in. This abstraction allows for flexibility in choosing a
// different service locator plugin in the future if needed.
//
// The wrapper function encapsulates the complexity of the service locator and
// provides a cleaner and more readable interface for retrieving dependencies
// throughout the codebase.

/// Provides a way to retrieve an instance of a class registered
/// with the service locator.
T locate<T extends Object>() => _serviceLocator.get<T>();

void dislocate<T extends BasePresenter>() => unloadPresenterManually<T>();

class ServiceLocator {
  ServiceLocator._();

  /// Sets up the whole dependency injection system by calling various setup
  /// methods in a certain order.
  ///
  /// Also provides an optional flag to only start services and skip the other
  /// setup steps.
  ///
  /// Ensures that all necessary dependencies are initialized before starting
  /// the application.
  static Future<void> setUp({bool startOnlyService = false}) async {
    final ServiceLocator locator = ServiceLocator._();
    await locator._setUpServices();
    if (startOnlyService) return;
    await locator._setUpDataSources();
    await locator._setUpRepositories();
    await locator._setUpUseCase();
    await locator._setUpPresenters();
  }

  Future<void> _setUpFirebaseServices() async {}

  Future<void> _setUpAudioService() async {}

  Future<void> _setUpRepositories() async {
    _serviceLocator.registerLazySingleton<UserDataRepository>(
        () => UserDataRepositoryImpl(locate()));
  }

  Future<void> _setUpServices() async {
    _serviceLocator
      ..registerLazySingleton<BackendAsAService>(() => BackendAsAService())
      ..registerLazySingleton<ErrorMessageHandler>(
          () => ErrorMessageHandlerImpl())
      ..registerLazySingleton<LocalCacheService>(() => LocalCacheService())
      ..registerLazySingleton<TimeService>(() => TimeService());
    await LocalCacheService.setUp();
    await _setUpAudioService();
    await _setUpFirebaseServices();
  }

  Future<void> _setUpDataSources() async {
    _serviceLocator
        .registerLazySingleton(() => UserDataLocalDataSource(locate()));
  }

  Future<void> _setUpPresenters() async {
    // _serviceLocator
    //   ..registerFactory(() => loadPresenter(MainPresenter(locate())));
  }

  Future<void> _setUpUseCase() async {
    _serviceLocator
      ..registerLazySingleton(
          () => DetermineFirstRunUseCase(locate(), locate()))
      ..registerLazySingleton(() => SaveFirstTimeUseCase(locate(), locate()));
  }
}
