import 'package:floatinghearts/floating-hearts/widgets/heart.dart';
import 'package:flutter/material.dart';

class FloatingHeartsProvider with ChangeNotifier {

  FloatingHeartsProvider();

  List<Widget> _hearts = <Widget>[];
  int          _key = 0;

  List<Widget> get hearts => _hearts;


  void addHeart() {
    _hearts.add(
      Heart(
        key: Key(_key.toString()
      )
    ));
    _key++;
    notifyListeners();
  }

  void removeHeart(Key? key){
    _hearts.removeWhere((heart) => heart.key == key);
  }
}