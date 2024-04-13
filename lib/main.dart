import 'package:flutter/material.dart';

import 'package:example/presentation/presentation.dart';
import 'package:example/injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp(const App());
}
