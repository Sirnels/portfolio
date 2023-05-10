import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_app/components/animation.dart';
import 'package:web_app/components/navigation.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/Service.dart';

import 'components/service_card.dart';

class ServiceSection extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ServiceSectionState();
}

class _ServiceSectionState extends ConsumerState<ServiceSection> {
  Widget serviceCard(int index) {
    switch (index) {
      case 0:
        return SlideTransitionContainer(
          child: Container(
            width: 800,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [kDefaultCardShadow],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [kDefaultCardShadow],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Get insights from complex data with our visualization services.'),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/bi1.png',
                    height: 512,
                  ),
                ),
              ],
            ),
          ),
        );
      case 1:
        return SlideTransitionContainer(
          child: Container(
            width: 800,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [kDefaultCardShadow],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [kDefaultCardShadow],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'Secure your business future with data modeling and forecasting services.'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/tab3.png',
                    height: 512,
                  ),
                ),
              ],
            ),
          ),
        );
      case 2:
        return SlideTransitionContainer(
          child: Container(
            width: 800,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [kDefaultCardShadow],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [kDefaultCardShadow],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'Data accuracy guaranteed with quality assurance services for informed decisions.'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/sql3.png',
                    height: 512,
                  ),
                )
              ],
            ),
          ),
        );
      case 3:
        return SlideTransitionContainer(
          child: Container(
            width: 800,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [kDefaultCardShadow],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [kDefaultCardShadow],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'Realize your business potential with bespoke intelligence and reporting services.'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/bi2.png',
                    height: 512,
                  ),
                ),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            color: Color(0xFFFF0000),
            title: "Service Offerings",
            subTitle: "My Strong Arenas",
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            children: List.generate(
                services.length,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ServiceCard(
                        index: index,
                        press: () {
                          setState(() {
                            ref.read(serviceNavigation.notifier).state = index;
                            ref.read(isClickedServiceCard.notifier).state =
                                true;
                          });
                        },
                      ),
                    )),
          ),
          ref.read(serviceNavigation.notifier).state == 4
              ? Container()
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: serviceCard(ref.watch(serviceNavigation)),
                ),
        ],
      ),
    );
  }
}
