import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_app/components/navigation.dart';
import 'package:web_app/components/responsive.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/sections/about/about_section.dart';
import 'package:web_app/sections/contact/contact_section.dart';
import 'package:web_app/sections/recent_work/recent_work_section.dart';
import 'package:web_app/sections/service/service_section.dart';
import 'package:web_app/sections/topSection/top_section.dart';

class HomeScreen extends ConsumerWidget {
  Widget tabNavigation(int index,
      {bool isMobile, bool isTablet, bool isDesktop}) {
    switch (index) {
      case 0:
        return AboutSection(
          isMobile: isMobile,
          isTablet: isTablet,
          isDesktop: isDesktop,
        );
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
        body: Responsive(
      mobile: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(
              isMobile: true,
            ),
            SizedBox(height: kDefaultPadding * 2),
            tabNavigation(
                ref.watch(
                  initNavigation,
                ),
                isMobile: true,
                isTablet: false,
                isDesktop: false)

            //SizedBox(height: kDefaultPadding),

            // This SizeBox just for demo
            // SizedBox(
            //   height: 500,
            // )
          ],
        ),
      ),
      tablet: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(
              isTablet: true,
            ),
            SizedBox(height: kDefaultPadding * 2),
            tabNavigation(ref.watch(initNavigation),
                isMobile: false, isTablet: true, isDesktop: false)

            //SizedBox(height: kDefaultPadding),

            // This SizeBox just for demo
            // SizedBox(
            //   height: 500,
            // )
          ],
        ),
      ),
      desktop: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(
              isDesktop: true,
            ),
            SizedBox(height: kDefaultPadding * 2),
            tabNavigation(ref.watch(initNavigation),
                isMobile: false, isTablet: false, isDesktop: true)

            //SizedBox(height: kDefaultPadding),

            // This SizeBox just for demo
            // SizedBox(
            //   height: 500,
            // )
          ],
        ),
      ),
    ));
  }
}
