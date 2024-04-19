import 'package:flutter/material.dart';
import 'package:flutter_shell_redirect/onboarding/onboarding_shell.dart';
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

@TypedShellRoute<OnboardingShellRouteData>(routes: [
  TypedGoRoute<OnboardingFirstScreenRoute>(
    path: '/onboarding/first_screen',
  ),
  TypedGoRoute<OnboardingSecondScreenRoute>(
    path: '/onboarding/second_screen',
  ),
])
class OnboardingShellRouteData extends ShellRouteData {
  OnboardingShellRouteData();

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return OnboardingShell(navigator: navigator);
  }
}

class OnboardingFirstScreenRoute extends GoRouteData {
  OnboardingFirstScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'First screen',
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingSecondScreenRoute extends GoRouteData {
  OnboardingSecondScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Second screen',
            ),
          ],
        ),
      ),
    );
  }
}
