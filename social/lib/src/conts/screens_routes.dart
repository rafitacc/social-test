import 'package:flutter/material.dart';
import 'package:social/src/screens/home/home.dart';

Map<String, WidgetBuilder> screensRoutes() {
  return <String, WidgetBuilder>{
    'home': (context) => const HomeView(),
  };
}
