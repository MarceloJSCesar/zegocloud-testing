import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:testing_zegocloud/src/config/routes.dart';
import 'package:testing_zegocloud/src/controller/home.controller.dart';

class LoginController {
  final homeController = HomeController();

  static final firstAndLastNameController = TextEditingController();
  static final userIdController = TextEditingController();

  static void onFirstAndLastNameFieldChanged(String value) {
    log("=== FirstAndLastNameField changed: $value");
  }

  static void onUserIdFieldChanged(String value) {
    log("=== UserIdField changed: $value");
  }

  static void login(BuildContext context) {
    HomeController.firstAndLastNameController = firstAndLastNameController;
    HomeController.userIdController = userIdController;

    Navigator.of(context).pushNamed(AppRoute.home);
  }
}
