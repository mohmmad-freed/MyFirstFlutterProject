import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Main_Page.dart';
void main(List<String> args) {
  runApp(const ImagePage());
}

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "first",
      home:Main_page(),
      debugShowCheckedModeBanner: false,

    );
  }
}