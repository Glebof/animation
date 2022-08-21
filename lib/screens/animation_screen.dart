import 'package:flutter/material.dart';
// import 'animation_screen2.dart';

class AnimationScreen extends StatefulWidget {


  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with SingleTickerProviderStateMixin {
  //
  // bool isAnimated = false;
  //
  // double width = 100;
  // double height = 100;

  late AnimationController _controller;

  late Animation<double> animation;

  final Tween<double> opacityTween = Tween<double>(begin: 0.0, end: 1.0);

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    )
      ..addListener(() {
        setState(() {

        });
      });

    animation = opacityTween.animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.yellow.withOpacity(animation.value),

              // duration: Duration(milliseconds: 400),
            ),
            SizedBox(height: 10),
            TextButton(onPressed: () {

              if(_controller.isCompleted){
                _controller.reverse();
              } else {
                _controller.forward();
              }

              // if(!isAnimated){
              //  setState(() {
              //    width = 300;
              //    height = 300;
              //  });
              // } else {
              //   setState(() {
              //     width = 100;
              //     height = 100;
              //   });
              // }
              // isAnimated = !isAnimated;
              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AnimationScreen2()));
            },
                child: Text("animate"))
          ],
        ),
      ),
    );
  }
}
