import 'package:acesoftware_website/const_setting/const_colors.dart';
import 'package:flutter/material.dart';

import 'const_setting/const_settings.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});






  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ace software Website vrs $websiteVersion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primarySwatch: kColorTheme60,
      ),
      home: const HomePage(title: 'Home'),
    );
  }
}