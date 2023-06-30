import 'package:flutter/material.dart';
import 'package:flutter_application_1/catagories/drinks.dart';
import 'package:flutter_application_1/catagories/salad.dart';
import 'package:flutter_application_1/catagories/seaFood.dart';

import 'speedFood.dart';

class allCatagoriesSlides extends StatelessWidget {
  const allCatagoriesSlides({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Column(
          children: [
            speedfoodSlide(),
            seafoodSlide(),
            saladsSlide(),
            DrinksSlide(),
          ],
        ),
      ],
    );
  }
}
