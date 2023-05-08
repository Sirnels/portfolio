import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../constants.dart';

class GlassContent extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  final bool isDesktop;
  const GlassContent({
    Key key,
    @required this.size,
    this.isMobile,
    this.isTablet,
    this.isDesktop,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          height: MediaQuery.of(context).size.width * 0.4,
          // constraints:
          //     BoxConstraints(maxWidth: 1110, maxHeight: size.height * 0.7),
          width: double.infinity,
          color: Colors.white.withOpacity(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello There!",
                style: Theme.of(context).textTheme.headlineSmall.copyWith(
                      color: Colors.white,
                      fontSize: isMobile == true
                          ? MediaQuery.of(context).size.width * 0.02
                          : isTablet == true
                              ? MediaQuery.of(context).size.width * 0.02
                              : 25,
                    ),
              ),
              Text(
                "Okoh \nNelson",
                style: TextStyle(
                  fontSize: isMobile == true
                      ? MediaQuery.of(context).size.width * 0.05
                      : isTablet == true
                          ? MediaQuery.of(context).size.width * 0.065
                          : 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
              Text(
                "Data Analyst | Software Developer",
                style: Theme.of(context).textTheme.headlineSmall.copyWith(
                      fontSize: isMobile == true
                          ? MediaQuery.of(context).size.width * 0.03
                          : isTablet == true
                              ? MediaQuery.of(context).size.width * 0.025
                              : 30,
                      color: Colors.white,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
