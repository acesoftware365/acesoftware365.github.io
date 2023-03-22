import 'package:acesoftware_website/screens/desktop/desktop_body.dart';
import 'package:acesoftware_website/screens/mobile/mobile_body.dart';
import 'package:acesoftware_website/screens/responsive_layout.dart';
import 'package:flutter/material.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key? key, required String title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const
        ResponsiveLayout(
        mobileBody: MyMobileBody(),
        desktopBody: MyDesktopBody(),
    );
  }
}
