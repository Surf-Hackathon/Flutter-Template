import 'package:flutter/material.dart';
import 'package:hackathon_template/assets/theme/app_theme.dart';
import 'package:hackathon_template/di/di_container.dart';
import 'package:hackathon_template/navigation/app_router.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt.get<AppRouter>();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,

      /// Theme configuration.
      theme: AppTheme.light().themeData,
      darkTheme: AppTheme.dark().themeData,
      themeMode: ThemeMode.light,

      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
