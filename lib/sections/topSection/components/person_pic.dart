import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  final bool isDesktop;
  const PersonPic({
    Key key,
    this.isMobile,
    this.isTablet,
    this.isDesktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxWidth: isMobile == true
              ? 339
              : isTablet == true
                  ? MediaQuery.of(context).size.width * 0.7
                  : MediaQuery.of(context).size.width * 0.7,
          maxHeight: isMobile == true
              ? 360
              : isTablet == true
                  ? MediaQuery.of(context).size.width * 0.6
                  : MediaQuery.of(context).size.width * 0.8),
      child: Image.asset("assets/images/person.png"),
    );
  }
}
