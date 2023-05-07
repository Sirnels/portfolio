import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_app/components/navigation.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/sections/about/about_section.dart';
import 'package:web_app/sections/contact/contact_section.dart';
import 'package:web_app/sections/feedback/feedback_section.dart';
import 'package:web_app/sections/recent_work/recent_work_section.dart';
import 'package:web_app/sections/service/service_section.dart';
import 'package:web_app/sections/topSection/top_section.dart';

class HomeScreen extends ConsumerWidget {
  Widget tabNavigation(int index) {
    switch (index) {
      case 0:
        return AboutSection();
      case 1:
        return ServiceSection();
      case 2:
        return RecentWorkSection();
      // case 3:
      //   return FeedbackSection();
      case 3:
        return ContactSection();
        break;
      default:
    }
    return AboutSection();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(height: kDefaultPadding * 2),
            tabNavigation(ref.watch(initNavigation))

            //SizedBox(height: kDefaultPadding),

            // This SizeBox just for demo
            // SizedBox(
            //   height: 500,
            // )
          ],
        ),
      ),
    );
  }
}
