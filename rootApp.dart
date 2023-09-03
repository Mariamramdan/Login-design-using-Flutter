import 'package:flutter/material.dart';

import '../screens/homeScreen.dart';
import '../screens/homeScreen2.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }

}
