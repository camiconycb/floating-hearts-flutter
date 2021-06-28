import 'package:flutter/material.dart';

import 'package:floatinghearts/floating-hearts/widgets/floating-hearts.dart';
import 'package:floatinghearts/floating-hearts/widgets/heart-button.dart';



class MyHomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Floating Hearts'),
      ),
      body: Scaffold(
        body: Stack(
          children: [
            Center(
              child: Text('Floating hearts')
            ),

            Positioned(
              right:  MediaQuery.of(context).size.width*0.1,
              bottom:  MediaQuery.of(context).viewInsets.bottom + size.height*0.1,
              child:  FloatingHeartsWidget()
            ),

            Positioned(
              right:  MediaQuery.of(context).size.width*0.05,
              bottom: MediaQuery.of(context).viewInsets.bottom + size.height*0.1,
              child:  HeartButton(),
            ),
          
           ]
        ),
      ), 
    );
  }
}

