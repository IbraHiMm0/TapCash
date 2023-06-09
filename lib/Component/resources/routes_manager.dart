import 'package:demo/presentation/Screen/forgot_password/forgot_password_view.dart';
import 'package:demo/presentation/Screen/login/login_view.dart';
import 'package:demo/presentation/Screen/main/main_view.dart';
import 'package:demo/presentation/Screen/onboarding/onboarding_view.dart';
import 'package:demo/presentation/Screen/register/register_view.dart';
import 'package:demo/Component/resources/string_manager.dart';
import 'package:demo/presentation/Screen/splash/splash_view.dart';
import 'package:demo/presentation/Screen/store_details/store_details_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String onboardingRoute = "/onBoarding";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
  static const String CardRoute = "/CardOptions";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.onboardingRoute:
        return MaterialPageRoute(builder: (_) =>  const OnBoardingView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      case Routes.CardRoute:
        return MaterialPageRoute(builder: (_) => const Card());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(child: Text(AppStrings.noRouteFound)),
      ),
    );
  }
}
