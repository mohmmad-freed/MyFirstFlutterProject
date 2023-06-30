import 'package:flutter/material.dart';




class TutorialHome extends StatelessWidget {
  const TutorialHome({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    // the major Material Components.
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Example title'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.
      body: 
      SafeArea(
        child: Row(
          children: [
            GestureDetector(
              // ignore: avoid_print
              onTap:(){ print("hello");},
              child: const SizedBox(
                
                height: 100,
                width: 150,
                
                child: Center(child: Text("tap please" , style: TextStyle(fontSize: 20))),
              ),
            ),
            GestureDetector(
              onLongPress: () => print("double"),
              child: const SizedBox(
                
                height: 100,
                width: 150,
                
                child: Center(child: Text("tap please" , style: TextStyle(fontSize: 20))),
              ),
            )
          ],
      
        ),
      )
    );
  }
}