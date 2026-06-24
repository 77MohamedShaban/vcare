import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vcare/core/routing/routes_name.dart';

import '../../features/auht/login/ui/screen/login_screen.dart';
import '../../features/onboarding/screen/onboarding_screen.dart';

class RoutesManager {
  static Route<dynamic>? getRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.onboarding:
        return PageTransition(
          child: const OnboardingScreen(),
          type: PageTransitionType.fade,
        );
      case RoutesName.login:
        return PageTransition(
          child: const LoginScreen(),
          type: PageTransitionType.fade,
        );
      default:
        return PageTransition(
          child: const Scaffold(body: Center(child: Text("No Route Found"))),
          type: PageTransitionType.fade,
        );
    }
  }
}
