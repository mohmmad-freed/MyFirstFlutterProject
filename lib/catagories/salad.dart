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

class saladsSlide extends StatelessWidget {
  const saladsSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text("Salads",style: dtinksFontStyle,),
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
                    imagePath: normalSalad_path,
                    imageName: normalSalad_name,
                    onclick: (){
                      foodBtnAction(audioPath: normalSaladSound_path);
                    },),
                    sbox(),
                buildFood(
                    imagePath: crunchySalad_path,
                    imageName: crunchySalad_name,
                    onclick: (){
                      foodBtnAction(audioPath: crunchySaladSound_path);
                    },),
                sbox(),
                buildFood(
                    imagePath: prawnSalad_path,
                    imageName: prawnSalad_name,
                    onclick: (){
                      foodBtnAction(audioPath: prawnSaladSound_path);
                    },),
                sbox(),
                buildFood(
                    imagePath: chirsJerk_path,
                    imageName: chirsJerk_name,
                    onclick: (){
                      foodBtnAction(audioPath: chirsJerkSound_path);
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
