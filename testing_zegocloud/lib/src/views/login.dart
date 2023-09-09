import 'package:flutter/material.dart';
import 'package:testing_zegocloud/src/controller/login.controller.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text("Login"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    controller: LoginController.firstAndLastNameController,
                    decoration: const InputDecoration(
                      hintText: "First and Last Name",
                    ),
                    textInputAction: TextInputAction.next,
                    onChanged: LoginController.onFirstAndLastNameFieldChanged,
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: LoginController.userIdController,
                    decoration: const InputDecoration(
                      hintText: "Your UserID",
                    ),
                    onChanged: LoginController.onUserIdFieldChanged,
                  ),
                  const SizedBox(height: 10),
                  Semantics(
                    button: true,
                    child: InkWell(
                      onTap: () => LoginController.login(context),
                      child: Container(
                        height: 40,
                        width: 100,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text("Login"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
