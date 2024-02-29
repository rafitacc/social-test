import 'package:flutter/material.dart';
import 'package:social/src/screens/home/widgets/appbar_home.dart';

import 'package:social/src/widgets/menu_main.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Stack _body() {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [
                Color.fromRGBO(29, 3, 56, 1),
                Color.fromRGBO(10, 1, 18, 1),
              ],
            ),
          ),
        ),
        const AppBarHome(),
        const Padding(
          padding: EdgeInsets.only(bottom: 40),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: MenuMain(),
          ),
        ),
      ],
    );
  }
}
