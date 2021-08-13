import 'package:auto_route/annotations.dart';
import 'package:route_and_http_demo/pages/export_pages.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      //route name HomeRoute
    ),
    //route name DetailRoute
    AutoRoute(page: DetailPage, initial: true),
    //route name ThirdRoute
    AutoRoute(page: ThirdPage),
  ],
)
class $MyAppRouter {}
