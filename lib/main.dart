import 'package:flutter/material.dart';

import 'package:app_theme/app_theme.dart' show AppTheme;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:base_architecture/home/repository/home_repo.dart';
import 'home/view_models/home.viewmodel.dart';
import 'locator.dart';
import 'shared/routes/routes.dart';
import 'shared/services/navigation.service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // INIT SERVICE LOCATOR
  setupLocator();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => HomeViewModel(repo: locator<HomeRepo>()),
        ),
      ],
      child: MainApp(),
    ),
  );
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final navigatorService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorService.rootNavKey,
      title: 'Screener',
      onGenerateRoute: AppRoutes.generateRoute,
      theme: AppTheme.theme,
    );
  }
}
