import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:social/src/conts/assets_paths.dart';

class ButtonEdit extends StatelessWidget {
  const ButtonEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(0.5),
        height: 44,
        width: 44,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.05),
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(16.0),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 3,
              sigmaY: 3,
            ),
            child: Center(
              child: Image.asset(
                AssetPath.edit,
                height: 28,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
