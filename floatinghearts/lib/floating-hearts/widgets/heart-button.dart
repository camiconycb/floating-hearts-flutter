import 'package:floatinghearts/floating-hearts/provider/floating-hearts-provider.dart';
import 'package:flutter/material.dart'; 
import 'package:provider/provider.dart'; 

class HeartButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return RawMaterialButton(
      onPressed: () {
        FloatingHeartsProvider floatingHeartsProvider = context.read<FloatingHeartsProvider>();
        floatingHeartsProvider.addHeart();
      },
      child: Icon(
        Icons.favorite_border_outlined, 
        color: Colors.white,
        size: size.width*0.1,
      ),
      elevation: 2.0,
      shape: CircleBorder(),
    );
  }
}
