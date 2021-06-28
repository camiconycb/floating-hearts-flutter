

import 'package:floatinghearts/floating-hearts/provider/floating-hearts-provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FloatingHeartsWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    FloatingHeartsProvider floatingHeartsProvider = context.watch<FloatingHeartsProvider>();
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Padding(
        padding: const EdgeInsets.only(bottom:20),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: size.height*0.8,
            width: size.width*0.2,
            child:  Stack(
              children: floatingHeartsProvider.hearts
            ),
            
          ),
        ),
      ));
  }
}