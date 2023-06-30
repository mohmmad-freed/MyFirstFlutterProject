// ignore: file_names
import 'package:flutter/material.dart';

import '../utilty/Fonts/fontSize.dart';
import '../utilty/colors.dart';

// ignore: camel_case_types
class draweredHead extends StatelessWidget {
  const draweredHead({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Images/Fstars.png'))),
          padding: const EdgeInsets.only(bottom: 0),
          child: const Column(children: [
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              backgroundColor: Colors.black12,
              radius: 65,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Images/black_leon.jpg'),
                radius: 60,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Mohammad Fareed",
              style: TextStyle(
                fontSize: drawerLeadingFontS,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
              color: Colors.black,
            )
          ]),
        ),
      ],
    );
  }
}

class draweredMid extends StatelessWidget {
  const draweredMid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
              // ignore: avoid_print
              onTap: () => print("Home"),
              child: const ListTile(
                leading: Icon(
                  Icons.home,
                  color: drawerIconsColor,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: drawerLeadingFontS),
                ),
              )),
          GestureDetector(
              // ignore: avoid_print
              onTap: () => print("Sittings"),
              child: const ListTile(
                leading: Icon(
                  Icons.settings,
                  color: drawerIconsColor,
                ),
                title: Text(
                  "Settings",
                  style: TextStyle(fontSize: drawerLeadingFontS),
                ),
              )),
          GestureDetector(
              // ignore: avoid_print
              onTap: () => print("Securety"),
              child: const ListTile(
                leading: Icon(
                  Icons.privacy_tip,
                  color: drawerIconsColor,
                ),
                title: Text(
                  "Securety",
                  style: TextStyle(fontSize: drawerLeadingFontS),
                ),
              )),
          GestureDetector(
              // ignore: avoid_print
              onTap: () => print("languages"),
              child: const ListTile(
                leading: Icon(
                  Icons.language,
                  color: drawerIconsColor,
                ),
                title: Text(
                  "languages",
                  style: TextStyle(fontSize: drawerLeadingFontS),
                ),
              )),
        ],
      ),
    );
  }
}

class draweredTail extends StatelessWidget {
  const draweredTail({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Align(
      alignment: FractionalOffset.bottomCenter,
      child: Column(
        children: [
          GestureDetector(
              onTap: () {
                print("logging out");
              },
              child: const ListTile(
                leading: Icon(
                  Icons.logout_rounded,
                  color: drawerIconsColor,
                ),
                title: Text(
                  "log out",
                  style: TextStyle(fontSize: drawerLeadingFontS),
                ),
              )),
        ],
      ),
    ));
  }
}

class drawered extends StatelessWidget {
  const drawered({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: drawerSlideColor,
        child: Column(children: [
          const draweredHead(),
          const draweredMid(),
          Expanded(
            child: Container(),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 19),
            child: draweredTail(),
          ),
        ]));
  }
}
