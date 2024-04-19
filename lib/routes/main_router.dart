import 'package:flutter/material.dart';
import 'package:flutter_shell_redirect/screens/my_home_page.dart';
import 'package:go_router/go_router.dart';
part 'main_router.g.dart';

GoRouter mainRouter() {
  return GoRouter(
    routes: $appRoutes,
  );
}

@TypedGoRoute<RootRoute>(
  path: '/',
)
class RootRoute extends GoRouteData {
  const RootRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const MyHomePage();

}
