import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social/src/conts/screens_routes.dart';
import 'package:social/src/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social-test',
      theme: themeLight(context),
      initialRoute: 'home',
      routes: screensRoutes(),
      //   unknownRoute: GetPage(name: '/error', page: () => Page404()),
    );
  }
}
