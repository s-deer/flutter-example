import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injectable.config.dart';

@InjectableInit()
Future<GetIt> configureDependencies() async => GetIt.instance.init();
