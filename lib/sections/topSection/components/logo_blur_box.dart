import 'package:flutter/material.dart';

import 'glass_content.dart';

class LogoAndBlurBox extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  final bool isDesktop;
  const LogoAndBlurBox({
    Key key,
    @required this.size,
    this.isMobile,
    this.isTablet,
    this.isDesktop,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("assets/images/Logo.png"),
        Spacer(),
        GlassContent(
          size: size,
          isMobile: isMobile,
          isTablet: isTablet,
          isDesktop: isDesktop,
        ),
        Spacer(flex: 3),
      ],
    );
  }
}
