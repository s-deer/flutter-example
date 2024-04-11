import 'package:flutter/material.dart';

import 'app.dart';
import 'injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp(const App());
}
