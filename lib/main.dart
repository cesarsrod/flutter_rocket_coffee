import 'package:flutter/material.dart';
import 'package:flutter_rocket_coffee/responsive/responsive_layout.dart';
import 'package:flutter_rocket_coffee/views/screens/mobile_screen.dart';
import 'package:flutter_rocket_coffee/views/screens/web_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rocket Coffee',
      theme: ThemeData.dark(),
      home: ResponsiveLayout(
        mobileScreenLayout: MobileScreen(),
        webScreenLayout: WebScreen(),
      ),
    );
  }
}
