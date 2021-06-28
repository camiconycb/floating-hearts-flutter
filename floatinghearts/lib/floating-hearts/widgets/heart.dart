import 'package:flutter/material.dart';
import 'package:floatinghearts/floating-hearts/provider/floating-hearts-provider.dart';


import 'dart:ui';
import 'dart:math' as math;
import 'package:provider/provider.dart';

class Heart extends StatefulWidget {
 const Heart({required Key key}) : super(key: key);
  
  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin{
  late AnimationController controller;

  final Color  _color     = Color((math.Random().nextDouble() * 0xFFFFFF).toInt());
  final double right      = math.Random().nextInt(20).toDouble();
  final int    randomSize = math.Random().nextInt(18);
  double       opacity    = 0.7;

 @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() { 
    controller = AnimationController(vsync: this, duration: Duration(seconds: 5));
    _startAnimation(controller);
    super.initState();
  }

  void _startAnimation(AnimationController controller) {
    controller.forward().whenComplete((){

      FloatingHeartsProvider floatingHeartsProvider = context.read<FloatingHeartsProvider>();
      floatingHeartsProvider.removeHeart(widget.key);
      controller.dispose();

    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return AnimatedBuilder(
      animation: controller,
      builder: (context, snapshot) {

        final value = controller.value;

        double? bottom = lerpDouble(
          MediaQuery.of(context).viewInsets.bottom, 
          MediaQuery.of(context).viewInsets.bottom + size.height*0.25, 
          value
        );
        opacity = lerpDouble(0.7, 0, value)!;
        
        return  Positioned(
          bottom: bottom,
          right: right,
          child:   Icon(
            Icons.favorite,
            color: _color.withOpacity(opacity),
            size: (size.width * 0.05 + randomSize).toDouble(),
          )
        );
    
      }     
    );
   
  }
}