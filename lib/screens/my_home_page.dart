import 'package:flutter/material.dart';
import 'package:flutter_shell_redirect/routes/main_router.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello world',
            ),
            TextButton(
                onPressed: () {
                  OnboardingFirstScreenRoute().go(context);
                },
                child: const Text('Go to onboarding'))
          ],
        ),
      ),
    );
  }
}
