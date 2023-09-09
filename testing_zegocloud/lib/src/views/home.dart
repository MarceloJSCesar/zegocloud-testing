import 'package:flutter/material.dart';
import 'package:testing_zegocloud/src/config/constants.dart';
import 'package:testing_zegocloud/src/controller/home.controller.dart';

import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZegoUIKitPrebuiltCall(
        appID: AppConstants
            .appId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign: AppConstants
            .appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: HomeController.userIdController.text,
        userName: HomeController.firstAndLastNameController.text,
        callID: HomeController.callId,
        // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
          ..onOnlySelfInRoom = (_) => Navigator.of(context).pop(),
      ),
    );
  }
}
