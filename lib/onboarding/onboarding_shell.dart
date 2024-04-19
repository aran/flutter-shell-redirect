import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnboardingShell extends StatelessWidget {
  final Widget navigator;

  const OnboardingShell({super.key, required this.navigator});

  @override
  Widget build(BuildContext context) {
    return Provider<ExpensiveOnboardingData>(
        create: (context) {
          return ExpensiveOnboardingData()..startExpensiveFetch();
        },
        lazy: false,
        child: navigator);
  }
}

class ExpensiveOnboardingData {
  void startExpensiveFetch() {}
}
