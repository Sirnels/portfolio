import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  final bool isDesktop;

  const AboutSection({Key key, this.isMobile, this.isTablet, this.isDesktop})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1150),
      child: Column(
        children: [
          isDesktop == true
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AboutTextWithSign(),
                    Expanded(
                      child: AboutSectionText(
                          text:
                              "My name is Okoh Nelson based in Aberdeen Scortland United Kingdom.I have always been fascinated by the power of data to drive growth and success for businesses as such I believe that data is the lifeblood of any business, and that without accurate and actionable data, it's impossible to make informed decisions that drive growth and success. That's why I'm passionate about helping businesses of all sizes unlock the insights hidden in their data, and empower them to make data-driven decisions that improve their bottom line"),
                    ),
                    ExperienceCard(numOfExp: "Skill"),
                    Expanded(
                      child: AboutSectionText(
                        text:
                            "In SQL | Python | Excel | MySQL | Power Bi | Tableau | Micrsoft SQL Server | Flutter | Java",
                      ),
                    ),
                  ],
                )
              : Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AboutTextWithSign(),
                          Expanded(
                            child: AboutSectionText(
                                text:
                                    "My name is Okoh Nelson based in Aberdeen Scortland United Kingdom.I have always been fascinated by the power of data to drive growth and success for businesses as such I believe that data is the lifeblood of any business, and that without accurate and actionable data, it's impossible to make informed decisions that drive growth and success. That's why I'm passionate about helping businesses of all sizes unlock the insights hidden in their data, and empower them to make data-driven decisions that improve their bottom line"),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ExperienceCard(numOfExp: "Skill"),
                        Expanded(
                          child: AboutSectionText(
                            text:
                                "In SQL | Python | Excel | MySQL | Power Bi | Tableau | Micrsoft SQL Server | Flutter | Java",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
          SizedBox(height: kDefaultPadding * 3),
          Divider(
            height: 2,
            color: Colors.amber,
          )
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     MyOutlineButton(
          //       imageSrc: "assets/images/hand.png",
          //       text: "Hire Me!",
          //       press: () {},
          //     ),
          //     SizedBox(width: kDefaultPadding * 1.5),
          //     DefaultButton(
          //       imageSrc: "assets/images/download.png",
          //       text: "Download CV",
          //       press: () {},
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
