import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottum_icons/icon_above_text.dart';
import 'package:flutter_application_1/utilty/images/images_paths.dart';

import '../utilty/Fonts/TextStyles.dart';
import '../utilty/boxes.dart';
import '../utilty/colors.dart';
import '../utilty/dimensions.dart';
import '../utilty/images/images_name.dart';
import '../utilty/sounds/soundPaths.dart';
import 'speedFood.dart';

class DrinksSlide extends StatelessWidget {
  const DrinksSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text("Drinks",style: dtinksFontStyle,),
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
                    imagePath: water_path,
                    imageName: water_name,
                    onclick: (){
                      foodBtnAction(audioPath: waterSound_path);
                    },),
                    sbox(),
                buildFood(
                    imagePath: icedDrink_path,
                    imageName: icedDrink_name,
                    onclick: (){
                      foodBtnAction(audioPath: icedDrinkSound_path);
                    },),
                sbox(),
                buildFood(
                    imagePath: cola_path,
                    imageName: cola_name,
                    onclick: (){
                      foodBtnAction(audioPath: colaSound_path);
                    },),
                sbox(),
                buildFood(
                    imagePath: hot_path,
                    imageName: hot_name,
                    onclick: (){
                      foodBtnAction(audioPath: hotSound_path);
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
