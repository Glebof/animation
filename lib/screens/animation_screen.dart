import 'package:flutter/material.dart';

import 'animation_screen2.dart';

class AnimationScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: "My Hero",
              child: Container(
                width: 200,
                height: 200,
                color: Colors.yellow,
              ),
            ),
            SizedBox(height: 10),
            TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AnimationScreen2()));
            }, child: Text("Go to screen 2"))
          ],
        ),
      ),
    );
  }
}
