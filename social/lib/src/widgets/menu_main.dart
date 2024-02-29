import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social/src/conts/assets_paths.dart';

class MenuMain extends StatefulWidget {
  const MenuMain({super.key});

  @override
  State<MenuMain> createState() => _MenuMainState();
}

class _MenuMainState extends State<MenuMain> {
  int indexSelectButton = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0.5),
      height: 72,
      width: 343,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(26, 25, 27, 0.8),
        borderRadius: BorderRadius.all(
          Radius.circular(48.0),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(48.0),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 2,
            sigmaY: 2,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _iconSelect(AssetPath.icons_4, 48, 0),
              _iconSelect(AssetPath.icons_3, 30, 1),
              _buttonAddMain(),
              _iconSelect(AssetPath.icons_3, 30, 2),
              _iconSelect(AssetPath.icons_4, 48, 3),
            ],
          ),
        ),
      ),
    );
  }

  _iconSelect(name, double height, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          indexSelectButton = index;
        });
      },
      child: SizedBox(
        height: 50,
        width: 50,
        child: Center(
          child: Image.asset(
            name,
            fit: BoxFit.cover,
            height: index == indexSelectButton ? height + 7 : height,
            color: index == indexSelectButton
                ? Colors.white
                : const Color.fromARGB(255, 167, 163, 163),
          ),
        ),
      ),
    );
  }

  _buttonAddMain() {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: const BorderRadius.all(
          Radius.circular(300.0),
        ),
        gradient: LinearGradient(
          colors: [
            Get.theme.colorScheme.onPrimary,
            Get.theme.colorScheme.primary,
          ],
        ),
      ),
      child: const Icon(
        Icons.add_rounded,
        size: 30,
        color: Colors.white,
      ),
    );
  }
}
