import 'package:flutter/material.dart';
import 'package:testing_zegocloud/src/config/routes.dart';
import 'package:testing_zegocloud/src/views/home.dart';
import 'package:testing_zegocloud/src/views/login.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoute.login: (_) => const LoginView(),
        AppRoute.home: (_) => const HomeView(),
      },
      initialRoute: AppRoute.login,
    );
  }
}
