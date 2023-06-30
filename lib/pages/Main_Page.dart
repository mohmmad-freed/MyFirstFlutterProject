import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawered/Drawered.dart';

import '../catagories/allCatagoriesSlides.dart';
import '../utilty/Fonts/TextStyles.dart';
import '../utilty/boxes.dart';
import '../utilty/colors.dart';

class Main_page extends StatelessWidget {
  const Main_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: appbarColor, actions: [
        
        Container(
          alignment: Alignment.centerRight,
          width: 200,
          height: 50,
          padding: EdgeInsets.all(2),
          margin: EdgeInsets.all(7),
          decoration: BoxDecoration(
              color: appbarSearchBackgroundColor, borderRadius: BorderRadius.circular(50)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "search",
                style: dtinksFontStyle,
              ),
              Row(
                children: [
                  VerticalDivider(
                    thickness: 2,
                  ),
                  IconButton(onPressed: null, icon: Icon(Icons.search)),
                ],
              ),
            ],
          ),
        ),
        lbox(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.pedal_bike),
            Text("sare3"),
          ],
        ),
        xsbox(),
      ]),
      drawer: SafeArea(child: const drawered()),
      body: allCatagoriesSlides(),
    );
  }
}
