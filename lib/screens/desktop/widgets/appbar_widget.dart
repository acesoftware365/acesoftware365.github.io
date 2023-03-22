import 'package:acesoftware_website/const_setting/const_colors.dart';
import 'package:flutter/material.dart';

import '../../../const_setting/const_responsive.dart';

class AppBarSideGradientEffect extends StatelessWidget {
  final bool isRightSide;
  const AppBarSideGradientEffect({Key? key, required this.isRightSide})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isRightSide
        ? Container(
            width: paddingWithAppBar,
            height: kToolbarHeight,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.black,
               // kColorTheme60,
               kColorTheme30,

              ],
            )))
        : Container(
            width: paddingWithAppBar,
            height: kToolbarHeight,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                Colors.black,
               // kColorTheme60,
               kColorTheme30,

              ],
            )));
  }
}
