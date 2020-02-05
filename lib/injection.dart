import 'package:dependency_injection_test/injection.iconfig.dart';
import 'package:injectable/injectable.dart';

@injectableInit
void configureInjection(String environment) =>
    $initGetIt(environment: environment);

abstract class Env {
  static const dev = 'dev';
  static const prod = 'prod';
}