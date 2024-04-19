// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $rootRoute,
      $onboardingShellRouteData,
    ];

RouteBase get $rootRoute => GoRouteData.$route(
      path: '/',
      factory: $RootRouteExtension._fromState,
    );

extension $RootRouteExtension on RootRoute {
  static RootRoute _fromState(GoRouterState state) => const RootRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $onboardingShellRouteData => ShellRouteData.$route(
      factory: $OnboardingShellRouteDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/onboarding/first_screen',
          factory: $OnboardingFirstScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/onboarding/second_screen',
          factory: $OnboardingSecondScreenRouteExtension._fromState,
        ),
      ],
    );

extension $OnboardingShellRouteDataExtension on OnboardingShellRouteData {
  static OnboardingShellRouteData _fromState(GoRouterState state) =>
      OnboardingShellRouteData();
}

extension $OnboardingFirstScreenRouteExtension on OnboardingFirstScreenRoute {
  static OnboardingFirstScreenRoute _fromState(GoRouterState state) =>
      OnboardingFirstScreenRoute();

  String get location => GoRouteData.$location(
        '/onboarding/first_screen',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OnboardingSecondScreenRouteExtension on OnboardingSecondScreenRoute {
  static OnboardingSecondScreenRoute _fromState(GoRouterState state) =>
      OnboardingSecondScreenRoute();

  String get location => GoRouteData.$location(
        '/onboarding/second_screen',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
