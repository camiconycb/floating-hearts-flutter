import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'floating-hearts/pages/home-widget.dart';
import 'floating-hearts/provider/floating-hearts-provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FloatingHeartsProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Floating Hearts',
        theme: ThemeData.dark(),
        home: MyHomePage(),
      ),
    );
  }
}
