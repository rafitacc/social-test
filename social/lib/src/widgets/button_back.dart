import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonBack extends StatelessWidget {
  const ButtonBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => Get.back(),
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
              child: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
                size: 19,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
