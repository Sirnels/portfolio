import 'package:flutter/material.dart';
import 'package:web_app/components/animation.dart';
import 'package:web_app/constants.dart';

import 'components/logo_blur_box.dart';
import 'components/menu.dart';
import 'components/person_pic.dart';

class TopSection extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  final bool isDesktop;

  const TopSection({Key key, this.isMobile, this.isTablet, this.isDesktop})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      height: isMobile == true
          ? MediaQuery.of(context).size.width * 0.7
          : isTablet == true
              ? MediaQuery.of(context).size.width * 0.6
              : 900,
      // constraints: BoxConstraints(
      //     maxHeight: isMobile == true
      //         ? 600
      //         : isTablet == true
      //             ? 600
      //             : 900,
      //     minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.png"),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(
              size: size,
              isMobile: isMobile,
              isTablet: isTablet,
              isDesktop: isDesktop,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SlideTransitionContainer(
                offsetX: 1.0,
                offsetY: 0.0,
                duration: 1000,
                child: PersonPic(
                  isMobile: isMobile,
                  isTablet: isTablet,
                  isDesktop: isDesktop,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Menu(isMobile, isTablet, isDesktop),
            ),
          ],
        ),
      ),
    );
  }
}
