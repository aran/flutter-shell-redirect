import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_shell_redirect/onboarding/onboarding_shell.dart';
import 'package:flutter_shell_redirect/screens/my_home_page.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
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
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) async {
    final data =
        await context.read<ExpensiveOnboardingData>().startExpensiveFetch();
    if (data == ExpensiveOnboardingData.knownExpensiveData) {
      return OnboardingSecondScreenRoute().location;
    }
    return null;
  }

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'First screen',
            ),
            TextButton(
                onPressed: () {
                  OnboardingSecondScreenRoute().go(context);
                },
                child: const Text('Go to second screen'))
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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Second screen',
            ),
            Consumer<ExpensiveOnboardingData>(
              builder: (context, data, child) {
                return FutureBuilder<String>(
                  future: data.startExpensiveFetch(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    } else {
                      return Text('Expensive data: ${snapshot.data}');
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
