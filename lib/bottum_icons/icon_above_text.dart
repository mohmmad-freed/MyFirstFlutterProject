import 'package:flutter/material.dart';

import '../utilty/Fonts/TextStyles.dart';

class buildFood extends StatelessWidget {
  const buildFood({
    super.key,
    required this.imagePath,
    required this.imageName,
    required this.onclick,
  });
  final String imagePath;
  final String imageName;
  final Function() onclick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onclick(),
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center ,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
              border: Border.all(width: 2, color: Colors.black),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Text(
                imageName,
                style: dtinksFontStyle,
      ),],
      ),
    );
  }
}
