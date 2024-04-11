import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'package:example/pages/page.dart';

part 'app_router.gr.dart';

@injectable
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  AppRouter();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: UsersRoute.page,
          initial: true,
        )
      ];
}
