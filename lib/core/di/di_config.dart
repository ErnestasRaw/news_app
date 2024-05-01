import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di_config.config.dart';

final locator = GetIt.I;

@InjectableInit(preferRelativeImports: false)
Future<void> configureDependencies() async => locator.init();
