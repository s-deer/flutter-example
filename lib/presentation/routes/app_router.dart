import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

import 'package:example/domain/domain.dart';

import '../pages/pages.dart';

part 'app_router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  AppRouter();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: UsersRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: UserRoute.page,
        ),
      ];
}
