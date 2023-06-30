import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottum_icons/icon_above_text.dart';
import 'package:flutter_application_1/catagories/speedFood.dart';
import 'package:flutter_application_1/utilty/images/images_paths.dart';

import '../utilty/Fonts/TextStyles.dart';
import '../utilty/boxes.dart';
import '../utilty/colors.dart';
import '../utilty/dimensions.dart';
import '../utilty/images/images_name.dart';
import '../utilty/sounds/soundPaths.dart';

class seafoodSlide extends StatelessWidget {
  const seafoodSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text("Seafoods",style: dtinksFontStyle,),
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
                    imagePath: floridaClams_path,
                    imageName: floridaClams_name,
                    onclick: (){
                      foodBtnAction(audioPath: floridaClamsSound_path);
                    },),
                    sbox(),
                buildFood(
                    imagePath: KingCrab_path,
                    imageName: KingCrab_name,
                    onclick: (){
                      foodBtnAction(audioPath: KingCrabSound_path);
                    },),
                sbox(),
                buildFood(
                    imagePath: SeafoodCeviche_path,
                    imageName: SeafoodCeviche_name,
                    onclick: (){
                      foodBtnAction(audioPath: SeafoodCevicheSound_path);
                    },),
                sbox(),
                buildFood(
                    imagePath: GrilledTuna_path,
                    imageName: GrilledTuna_name,
                    onclick: (){
                      foodBtnAction(audioPath: GrilledTunaSound_path);
                    },),
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
