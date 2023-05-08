
import 'package:demo/presentation/resources/string_manager.dart';

import 'package:flutter/material.dart';

import '../../screens/access_qr/access_qr.dart';
import '../../screens/child_screen/child_screen_view.dart';
import '../../screens/forgot_password/forgot_password_view.dart';
import '../../screens/login/login_view.dart';
import '../../screens/onboarding/onboarding_view.dart';
import '../../screens/pay/pay.dart';
import '../../screens/qr_info/qr_info.dart';
import '../../screens/register/register_view.dart';
import '../../screens/reset_password/reset_password.dart';
import '../../screens/splash/splash_view.dart';
import '../../screens/splash_qr/splash_qr.dart';
import '../../screens/splash_qr2/splash_qr2.dart';
import '../../screens/verfication/verfication.dart';
import '../../screens/withdraw/value_withdraw.dart';


class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String resetPasswordRoute = "/resetPassword";
  static const String verificationRoute = "/verification";
  static const String forChildRoute = "/forChild";
  static const String qrInfoRoute = "/qrInfo";
  static const String qrSplashRoute = "/qrSplash";
  static const String qrSplash2Route = "/qrSplash2";
  static const String onboardingRoute = "/onBoarding";
  static const String mainRoute = "/main";
  static const String accessQrRoute = "/accessQr";
  static const String valueWithdrawQrRoute = "/valueWithDraw";
  static const String payRoute = "/pay";

}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) =>  LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.verificationRoute:
        return MaterialPageRoute(builder: (_) => const VerfiyView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case Routes.resetPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ResetPasswordView());
      case Routes.onboardingRoute:
        return MaterialPageRoute(builder: (_) =>  const OnBoardingView());
      case Routes.forChildRoute:
        return MaterialPageRoute(builder: (_) =>  const ChildScreenView());
      case Routes.qrInfoRoute:
        return MaterialPageRoute(builder: (_) =>  const QrInfoView());
      case Routes.qrSplashRoute:
        return MaterialPageRoute(builder: (_) =>  const QrSplashView());
      case Routes.qrSplash2Route:
        return MaterialPageRoute(builder: (_) =>  const QrSplashView2());
      case Routes.accessQrRoute:
        return MaterialPageRoute(builder: (_) =>     QRScannerScreen());
      case Routes.valueWithdrawQrRoute:
        return MaterialPageRoute(builder: (_) =>     const ValueWithdrawView());
      case Routes.payRoute:
        return MaterialPageRoute(builder: (_) =>     const PayView());
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
