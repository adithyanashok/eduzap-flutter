import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:eduzap/domain/di/injectable.config.dart';

GetIt getIt = GetIt.instance;
@InjectableInit(initializerName: 'init')
Future<void> configInjection() async {
  getIt.init(environment: Environment.prod);
}
