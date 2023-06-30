import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('hello'),
          centerTitle: true,
          leading: Positioned(
              left: Checkbox.width / 2,
              top: Checkbox.width / 2,
              height: 40,
              width: 40,
              child: getPhoto()),
          actions: const [
            Icon(Icons.settings),
          ],
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.red,
              height: 300,
              width: 200,
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 50,
            )
          ],
        ));
  }
}

Widget getPhoto() {
  return const SizedBox(
    height: 40,
    width: 40,
    child: CircleAvatar(
      backgroundColor: Colors.black,
      radius: 130,
      child: CircleAvatar(
        backgroundImage: NetworkImage(
            'https://scontent.fjrs2-2.fna.fbcdn.net/v/t39.30808-6/351116893_2371495683021911_7547766734669285201_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=iWdrEM_oCnkAX_tIx_7&_nc_oc=AQlIiBhFgWNxifRH2psn_JdE3ltr4kvAjtObLGXrs867xFboHw4097ldKIgkGzLd0Dw&_nc_ht=scontent.fjrs2-2.fna&oh=00_AfBPqVaHGQFJXqqF1_uRPEby4ZcbHDHv-yG7FqQv9l9kLQ&oe=64833A6B'),
        radius: 120,
      ),
    ),
  );
}
