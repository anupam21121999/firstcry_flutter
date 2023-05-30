import 'package:assignment_flutter/views/home_screen.dart';
import 'package:assignment_flutter/views/product_screen.dart';
import 'package:assignment_flutter/widgets/customNavBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

