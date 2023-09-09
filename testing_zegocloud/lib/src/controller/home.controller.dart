import 'dart:math';

import 'package:flutter/widgets.dart';

class HomeController {
  static TextEditingController firstAndLastNameController =
      TextEditingController();
  static TextEditingController userIdController = TextEditingController();

  static String callId = Random().nextInt(10000).toString();
}
