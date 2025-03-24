import 'package:deliver_ap/auth/login_or_register.dart';
import 'package:deliver_ap/pages/login_page.dart';
import 'package:deliver_ap/pages/register_page.dart';
import 'package:deliver_ap/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const DeliverApp(),
    ),
  );
}

class DeliverApp extends StatelessWidget {
  const DeliverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "demo",
      home: LoginOrRegisterLayout(),
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
