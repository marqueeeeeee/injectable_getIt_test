
import 'package:dependency_injection_test/injection.dart';
import 'package:injectable/injectable.dart';

@Bind.toType(DevRepository, env: Env.dev)
@Bind.toType(ProdRepository, env: Env.prod)
@injectable
abstract class IRepository {
  int getIncrement();
}

@injectable
class DevRepository implements IRepository {
  @override
  int getIncrement() {
    return 0;
  }

}

@injectable
class ProdRepository implements IRepository {
  @override
  int getIncrement() {
    return 1;
  }

}