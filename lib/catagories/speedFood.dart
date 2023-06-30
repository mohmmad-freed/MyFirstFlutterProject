import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_application_1/bottum_icons/icon_above_text.dart';
import 'package:flutter_application_1/utilty/images/images_paths.dart';

import '../utilty/Fonts/TextStyles.dart';
import '../utilty/boxes.dart';
import '../utilty/colors.dart';
import '../utilty/dimensions.dart';
import '../utilty/images/images_name.dart';
import '../utilty/sounds/soundPaths.dart';

final player = AudioPlayer();

class speedfoodSlide extends StatelessWidget {
  speedfoodSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text(
          "Speedfood",
          style: dtinksFontStyle,
        ),
        Container(
          decoration: BoxDecoration(
            color: foodSlideBackground,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          margin: EdgeInsets.only(top: 10, bottom: 10),
          height: normalSlideHight,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                xsbox(),
                buildFood(
                  imagePath: burger_path,
                  imageName: burger_name,
                  onclick: () {
                    foodBtnAction(audioPath: burgerSound_path);
                  },
                ),
                sbox(),
                buildFood(
                  imagePath: chicken_path,
                  imageName: chicken_name,
                  onclick: () {
                    foodBtnAction(audioPath: chickenSound_path);
                  },
                ),
                sbox(),
                buildFood(
                  imagePath: pizza_path,
                  imageName: pizza_name,
                  onclick: () async {
                    foodBtnAction(audioPath: pizzaSound_path);
                  },
                ),
                sbox(),
                buildFood(
                  imagePath: shawarma_path,
                  imageName: shawarma_name,
                  onclick: () {
                    foodBtnAction(audioPath: shawarmaSound_path);
                  },
                ),
                xsbox(),
              ],
            ),
          ),
        ),
        Container(),
      ],
    ));
  }
}

void foodBtnAction({required String audioPath}) async {
  player.stop();
  AssetSource source = AssetSource(audioPath);
  await player.play(source);
}
