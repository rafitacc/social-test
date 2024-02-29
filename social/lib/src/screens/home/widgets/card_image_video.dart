import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social/src/conts/assets_paths.dart';

class CardImageVideo extends StatelessWidget {
  const CardImageVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 166,
      child: Column(
        children: [
          Container(
            width: 166,
            height: 225,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.05),
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16.0)),
              child: Image.asset(AssetPath.image_2),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Magazine haul #vogue #voguemagazine",
            style: Get.theme.textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
