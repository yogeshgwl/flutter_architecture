import 'package:base_architecture/login/view/forgot_password_view.dart';
import 'package:flutter/material.dart';

import 'package:base_architecture/login/view/login.view.dart';

import '../../home/view/dashboard.view.dart';

class AppRoutes {
  AppRoutes._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NamedRoute.home:
        return MaterialPageRoute<void>(
          builder: (context) => const LoginView(),
          settings: settings,
        );

      case NamedRoute.forgotPassword:
        return MaterialPageRoute<void>(
          builder: (context) => const ForgotPassword(),
          settings: settings,
        );

      case NamedRoute.dashboard:
        return MaterialPageRoute<void>(
          builder: (context) => const DashboardView(),
          settings: settings,
        );

      default:
        return MaterialPageRoute<void>(
          builder: (_) => _UndefinedView(name: settings.name),
          settings: settings,
        );
    }
  }
}

class _UndefinedView extends StatelessWidget {
  const _UndefinedView({Key? key, this.name}) : super(key: key);
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Something went wrong for $name'),
      ),
    );
  }
}

class NamedRoute {
  NamedRoute._();

  static const String home = '/';
  static const String forgotPassword = '/forgotPassword';
  static const String dashboard = '/dashboard';
}
