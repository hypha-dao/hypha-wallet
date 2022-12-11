import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/hypha_theme.dart';
import 'package:hypha_wallet/main.dart';

class HyphaApp extends StatelessWidget {
  const HyphaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      darkTheme: HyphaTheme.darkTheme,
      theme: HyphaTheme.lightTheme,
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
