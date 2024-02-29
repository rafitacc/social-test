// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:social/src/conts/assets_paths.dart';
import 'package:social/src/screens/home/widgets/card_image_video.dart';

class BodyHome extends StatelessWidget {
  BodyHome({super.key, this.spaceMargin = false});
  bool spaceMargin = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: spaceMargin ? 125 : 0),
        _firstLine(),
        GridView.builder(
          padding: const EdgeInsets.all(0),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.7,
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            return const CardImageVideo();
          },
        ),
      ],
    );
  }

  Widget _firstLine() {
    return Row(
      children: [
        Image.asset(AssetPath.security, height: 20),
        const SizedBox(width: 5),
        const Text('Private'),
        const SizedBox(width: 15),
        const Icon(
          Icons.remove_red_eye,
          color: Colors.white,
          size: 20,
        ),
        const SizedBox(width: 5),
        const Text('5.2K'),
      ],
    );
  }
}
