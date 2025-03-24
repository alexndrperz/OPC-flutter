import 'package:deliver_ap/pages/login_page.dart';
import 'package:deliver_ap/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegisterLayout extends StatefulWidget {
  const LoginOrRegisterLayout({super.key});

  @override
  State<LoginOrRegisterLayout> createState() => _LoginOrRegisterLayoutState();
}

class _LoginOrRegisterLayoutState extends State<LoginOrRegisterLayout> {
  bool showLogin = true;

  void toggleRegisterAndLogView() {
    setState(() {
      showLogin = !showLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLogin) {
      return LoginPage(onTap: toggleRegisterAndLogView);
    } else {
      return RegisterPage(onTap: toggleRegisterAndLogView);
    }
  }
}
