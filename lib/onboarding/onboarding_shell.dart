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
  static String knownExpensiveData = 'Expensive data';

  Future<String>? expensiveFetch;
  String? expensiveData;

  Future<String> startExpensiveFetch() {
    expensiveFetch ??= Future.delayed(const Duration(seconds: 2), () {
      expensiveData = knownExpensiveData;
      return expensiveData!;
    });

    return expensiveFetch!;
  }
}
