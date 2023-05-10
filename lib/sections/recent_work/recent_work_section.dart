import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_app/components/animation.dart';
import 'package:web_app/components/hireme_card.dart';
import 'package:web_app/components/navigation.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/RecentWork.dart';

import 'components/recent_work_card.dart';

class RecentWorkSection extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RecentWorkSectionState();
}

class _RecentWorkSectionState extends ConsumerState<RecentWorkSection> {
  @override
  Widget build(
    BuildContext context,
  ) {
    Widget projectCard(int index) {
      switch (index) {
        case 0:
          return SlideTransitionContainer(
            child: Container(
              height: 320,
              width: 1110,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  if (ref.read(isHoverNavigation.notifier).state)
                    kDefaultCardShadow
                ],
              ),
            ),
          );
        case 1:
          return SlideTransitionContainer(
            child: Container(
              height: 320,
              width: 1110,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  if (ref.read(isHoverNavigation.notifier).state)
                    kDefaultCardShadow
                ],
              ),
            ),
          );
        case 2:
          return SlideTransitionContainer(
            child: Container(
              height: 320,
              width: 1110,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  if (ref.read(isHoverNavigation.notifier).state)
                    kDefaultCardShadow
                ],
              ),
            ),
          );
        case 3:
          return SlideTransitionContainer(
            child: Container(
              height: 320,
              width: 1110,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  if (ref.read(isHoverNavigation.notifier).state)
                    kDefaultCardShadow
                ],
              ),
            ),
          );
          break;

        default:
          SlideTransitionContainer(
            child: Container(
              height: 320,
              width: 1110,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  if (ref.read(isHoverNavigation.notifier).state)
                    kDefaultCardShadow
                ],
              ),
            ),
          );
      }
    }

    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      // just for demo
      // height: 600,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF).withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/recent_work_bg.png"),
        ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(0, -80),
            child: HireMeCard(),
          ),
          SectionTitle(
            title: "Recent Works",
            subTitle: "My Strong Arenas",
            color: Color(0xFFFFB100),
          ),
          SizedBox(height: kDefaultPadding * 1.5),
          //   ref.read(isHoverNavigation.notifier).state == true

          ref.read(projectNavigation.notifier).state == 4
              ? SizedBox(
                  width: 1110,
                  child: Wrap(
                    spacing: kDefaultPadding,
                    runSpacing: kDefaultPadding * 2,
                    children: List.generate(
                      recentWorks.length,
                      (index) => RecentWorkCard(
                          index: index,
                          press: () {
                            setState(() {
                              ref.read(projectNavigation.notifier).state =
                                  index;
                              ref.read(isClicked.notifier).state = true;
                            });
                          }),
                    ),
                  ),
                )
              : Column(
                  children: [
                    SizedBox(
                      width: 1110,
                      child: Wrap(
                        spacing: kDefaultPadding,
                        runSpacing: kDefaultPadding * 2,
                        children: List.generate(
                          1,
                          (index) => RecentWorkCard(
                              index: ref.read(projectNavigation.notifier).state,
                              press: () {
                                setState(() {
                                  ref.read(projectNavigation.notifier).state =
                                      4;
                                  ref.read(isClicked.notifier).state = false;
                                });
                              }),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: projectCard(ref.watch(projectNavigation)),
                    ),
                  ],
                ),
          SizedBox(height: kDefaultPadding * 5),
        ],
      ),
    );
  }
}
