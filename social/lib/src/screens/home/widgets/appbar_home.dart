import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social/src/conts/assets_paths.dart';
import 'package:social/src/screens/home/body_home.dart';
import 'package:social/src/screens/home/widgets/button_edit.dart';
import 'package:social/src/screens/home/widgets/button_menu.dart';
import 'package:social/src/widgets/button_back.dart';

class AppBarHome extends StatefulWidget {
  const AppBarHome({super.key});

  @override
  State<AppBarHome> createState() => _AppBarHomeState();
}

class _AppBarHomeState extends State<AppBarHome> {
  ScrollController scrollController = ScrollController();
  bool spacingTitle = false;
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels >= 240.0) {
        setState(() {
          spacingTitle = true;
        });
      } else {
        setState(() {
          spacingTitle = false;
        });
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: <Widget>[
        SliverAppBar(
          automaticallyImplyLeading: false,
          forceMaterialTransparency: true,
          pinned: true,
          snap: false,
          floating: false,
          leading: const ButtonBack(),
          expandedHeight: 300.0,
          flexibleSpace: FlexibleSpaceBar(
            expandedTitleScale: 1.15,
            centerTitle: true,
            titlePadding: EdgeInsets.only(
                left: spacingTitle ? 60 : 15, bottom: spacingTitle ? 0 : 5),
            title: Row(
              children: [
                SizedBox(
                  width: 153,
                  height: 48,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Live Video Calls',
                        style: Get.theme.textTheme.titleMedium,
                      ),
                      Text(
                        '100 videos | 04:29:30',
                        style: Get.theme.textTheme.bodySmall!
                            .copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const ButtonEdit(),
                const SizedBox(width: 10),
                const ButtonMenu(),
                const SizedBox(width: 10),
              ],
            ),
            background: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  AssetPath.image_1,
                  fit: BoxFit.fill,
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(26, 2, 46, 0.5),
                        //  const Color.fromARGB(255, 14, 14, 14).withOpacity(0.5),
                        //        const Color.fromRGBO(25, 10, 42, 0.98),
                        Color.fromRGBO(10, 1, 18, 0.999),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: Get.height, child: _body()),
        ),
      ],
    );
  }

  Widget _body() {
    return BodyHome(spaceMargin: spacingTitle);
  }
}
