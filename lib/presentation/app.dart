import 'package:flutter/material.dart';

import 'package:example/presentation/routes/routes.dart';
import '../injectable/injectable.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.system,
      routerConfig: getIt<AppRouter>().config(),
    );
  }
}
