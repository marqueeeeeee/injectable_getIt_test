// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dependency_injection_test/IRepository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void $initGetIt({String environment}) {
  getIt
    ..registerFactory<DevRepository>(() => DevRepository())
    ..registerFactory<ProdRepository>(() => ProdRepository());
  if (environment == 'dev') {
    _registerDevDependencies();
  }
  if (environment == 'prod') {
    _registerProdDependencies();
  }
}

void _registerDevDependencies() {
  getIt..registerFactory<IRepository>(() => DevRepository());
}

void _registerProdDependencies() {
  getIt..registerFactory<IRepository>(() => ProdRepository());
}
