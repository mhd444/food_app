
import 'package:flutter/material.dart';
import 'package:new_app/presentation/login/login_view.dart';
import 'package:new_app/presentation/main/main_view.dart';
import 'package:new_app/presentation/resources/strings_manager.dart';
import 'package:new_app/presentation/splash/splash_view.dart';
import 'package:new_app/presentation/store_details/store_details_view.dart';

import '../forgot_password/forgot_password_view.dart';
import '../onboarding/onboarding_view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String onBoardingRoute = "/onBoarding";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";

}

class RoutGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(builder: (_) =>
        Scaffold(
          appBar: AppBar(title: const Text(AppString.noRouteFound),
          ),
          body: const Center(child: Text(AppString.noRouteFound)),
        )
    );
  }
}