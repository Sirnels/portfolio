import 'package:url_launcher/url_launcher.dart';
import 'dart:ui';

import 'package:flutter/material.dart';

launchingURL(String url) async {
  launchUrl(Uri(path: url));
  // if (await launchUrl(Uri(path: url))) {
  //   launchUrl(Uri(path: url));
  // } else {
  //   // cprint('Could not launch $url');
  // }
}

sendingMails() async {
  var url = Uri.parse("mailto:okohnelsonchimezie@gmail.com");
  if (await launchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

///frostedGreen
Widget frostedGreen(Widget child) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(15),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10),
      child: Container(
        color: Colors.green.withOpacity(0.3),
        child: child,
      ),
    ),
  );
}

///frostedBlack
Widget frostedBlack(Widget child) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10),
      child: Container(
        color: Colors.black.withOpacity(0.1),
        child: child,
      ),
    ),
  );
}

///frostedWhite
Widget frostedWhite(Widget child) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10),
      child: Container(
        color: Colors.white.withOpacity(0.06),
        child: child,
      ),
    ),
  );
}

///frostedYellow
Widget frostedYellow(Widget child) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10),
      child: Container(
        color: Colors.yellow.withOpacity(0.06),
        child: child,
      ),
    ),
  );
}

///frostedOrange
Widget frostedOrange(Widget child) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10),
      child: Container(
        color: Colors.orange.withOpacity(0.06),
        child: child,
      ),
    ),
  );
}

///frostedPink
Widget frostedPink(Widget child) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10),
      child: Container(
        color: Colors.pink.withOpacity(0.06),
        child: child,
      ),
    ),
  );
}

///frostedBlueGray
Widget frostedBlueGray(Widget child) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10),
      child: Container(
        color: Colors.blueGrey.withOpacity(0.06),
        child: child,
      ),
    ),
  );
}

///frostedRed
Widget frostedRed(Widget child) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10),
      child: Container(
        color: Colors.red.withOpacity(0.06),
        child: child,
      ),
    ),
  );
}

///frostedTeal
Widget frostedTeal(Widget child) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10),
      child: Container(
        color: Colors.teal.withOpacity(0.06),
        child: child,
      ),
    ),
  );
}
