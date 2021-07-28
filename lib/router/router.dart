import 'package:auto_route/annotations.dart';
import 'package:route_and_http_demo/pages/pages.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: DetailPage),
    AutoRoute(page: ThirdPage),
  ],
)
class $MyAppRouter {}
