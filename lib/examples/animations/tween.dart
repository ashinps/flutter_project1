import 'package:flutter/material.dart';

class Tweenanimate extends StatefulWidget {
  const Tweenanimate({super.key});

  @override
  State<Tweenanimate> createState() => _TweenanimateState();
}

class _TweenanimateState extends State<Tweenanimate> with
    SingleTickerProviderStateMixin {

  AnimationController? controller;
  Animation? colorAnimation;
  Animation? sizeAnimation;

  @override
  void initState() {
    super.initState();
    controller=AnimationController(vsync: this,duration:Duration(seconds: 2));
    colorAnimation = ColorTween(begin: Colors.cyan, end: Colors.amber).animate(controller!);
    sizeAnimation = Tween<double>(begin: 12.0,end: 200.0).animate(controller!);
    controller?.repeat();
    controller?.addListener(() {
  setState(() {});
  });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: sizeAnimation?.value ,width: sizeAnimation?.value,color: colorAnimation?.value,
        ),

    );
  }
}
