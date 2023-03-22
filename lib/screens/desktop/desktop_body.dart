import 'package:acesoftware_website/const_setting/const_colors.dart';
import 'package:acesoftware_website/const_setting/const_responsive.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../const_setting/const_assets_resource.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kColorTheme60,
        appBar: AppBar(
          leadingWidth: paddingWithAppBar,
          title: Row(
            children: [
              const SizedBox(
                width: 0,
              ),
              SizedBox(
                height: kToolbarHeight,
                child: Image.asset(
                  assetsImage[0],
                ),
              ),
              const Text('A C E S O F T W A R E   { 3 6 5 }'),
            ],
          ),
          backgroundColor: kColorTheme30,
          actions: [
            const SizedBox(
              width: 0,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Home",
                  style: appBarTextStyleOnDark,
                )),
            TextButton(onPressed: () {}, child: const Text("App")),
            TextButton(onPressed: () {}, child: const Text("Privacy")),
            TextButton(onPressed: () {}, child: const Text("About")),
            //  const AppBarSideGradientEffect(isRightSide: false,),
            const Flexible(
              flex: 1,
              child: SizedBox(
                width: 10,
              ),
            ),
          ],
        ),
        body: const ScaffordDesktopBody());
  }
}

class ScaffordDesktopBody extends StatelessWidget {
  const ScaffordDesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Top Section
        Expanded(
          flex: 6,
          child: Container(
            height: 20,
          //  child: Image.asset(assetsImage[3]),
          ),
        ),
        //Bottom Section
        //Stack from bottom
        Flexible(
          flex: 4,
          child: StackBottomLayout(
              bottomWidget: Column(
            children: [
              Flexible(
                  flex: 6,
                  child: Container(
                    color: kColorTheme60,
                  )),
              Flexible(
                  flex: 4,
                  child: Container(
                    color: kColorTheme30,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Expanded(child: SizedBox()),
                        ]),
                  )),
            ],
          )),
        ),
      ],
    );
  }
}

//BOTTOM STACK WIDGET
class StackBottomLayout extends StatelessWidget {
  final Widget bottomWidget;
  const StackBottomLayout({Key? key, required this.bottomWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        bottomWidget,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            ThreeFrontAdsPanel(
              boxNumber: "1",
            ),
            ThreeFrontAdsPanel(
              boxNumber: "2",
            ),
            ThreeFrontAdsPanel(
              boxNumber: "3",
            ),
          ],
        ),
      ],
    );
  }
}

class ThreeFrontAdsPanel extends StatelessWidget {
  final String boxNumber;
  const ThreeFrontAdsPanel({Key? key, required this.boxNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:  BoxDecoration(
          boxShadow: kElevationToShadow[24],
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(40.0),
                bottomRight: Radius.circular(1),
                topLeft: Radius.circular(1),
                bottomLeft: Radius.circular(1)),
          color: kColorTheme30,
        ),
        width: 300,
        height: 360,

        child: Center(
            child: AppAdsPanel(
          imageList: assetsImage[7].toLowerCase().toString(),
          appName: 'Dominoes Note',
          appDescription:
              '- App keep and add your score. \n- Support seven languages such as Spanish, Mandarin, Hindi, German, Arabic, Portuguese and English automatically depending on your device language. \n- Dark and Light Mode support depending on device setting.',
          appStoreLink:
              'https://apps.apple.com/us/app/dominoes-note/id1628874710',
          googleStoreLink:
              'https://play.google.com/store/apps/details?id=acesoftware365.com.dominonote&hl=en_US&gl=US',
          appStoreLogo: assetsImage[8].toLowerCase().toString(),
          googleStoreLogo: assetsImage[9].toLowerCase().toString(),
        )));
  }
}

class AppAdsPanel extends StatelessWidget {
  final String imageList;
  final String appName;
  final String appDescription;
  final String appStoreLink;
  final String googleStoreLink;
  final String appStoreLogo;
  final String googleStoreLogo;
  const AppAdsPanel(
      {Key? key,
      required this.imageList,
      required this.appName,
      required this.appDescription,
      required this.appStoreLink,
      required this.googleStoreLink,
      required this.appStoreLogo,
      required this.googleStoreLogo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {





    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //  Image.asset( assetsImage[0]),
        SizedBox(
            height: 100,
            width: 100,
            child: InkWell(
                onTap: () => launch(appStoreLink),
                child: Image.asset(imageList))),
        Text(appName,style: appBarTextStyleOnDarkHeader,),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(appDescription,style: appBarTextStyleOnDark,),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration:  BoxDecoration(
                boxShadow: kElevationToShadow[24],
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0)),
                color: Colors.white,
              ),
              width: 140,
              child: Center(
                child: InkWell(
                  onTap: () => launch(appStoreLink),
                  child: Image.asset(appStoreLogo),
                ),
              ),
            ),
            SizedBox(
              width: 140,
              child: InkWell(
                child: Image.asset(googleStoreLogo),
                onTap: () => launch(googleStoreLink),
              ),
            ),
          ],
        )
      ],
    );
  }
}

TextButton clickableLinkButton(String text) {
  return TextButton(
      onPressed: () {
        launch(
            'https://docs.flutter.io/flutter/services/UrlLauncher-class.html');
      },
      child: Text(text));
}
