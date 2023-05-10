import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_app/components/navigation.dart';
import 'package:web_app/models/RecentWork.dart';

import '../../../constants.dart';

class RecentWorkCard extends ConsumerStatefulWidget {
  // just press "Command + ."
  const RecentWorkCard({
    Key key,
    this.index,
    this.press,
  }) : super(key: key);

  final int index;
  final Function press;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => RecentWorkCardState();
}

class RecentWorkCardState extends ConsumerState<RecentWorkCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
          ref.read(isHoverNavigation.notifier).state = value;
          ref.read(projectNavigation.notifier).state = widget.index;
          print(widget.index);
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 320,
        width: 540,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(
          children: [
            Image.asset(
              recentWorks[widget.index].image,
              width: 250,
              height: 300,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      recentWorks[widget.index].category.toUpperCase(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(
                      recentWorks[widget.index].title,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          .copyWith(height: 1.5),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      ref.read(isClicked.notifier).state == true
                          ? "Go Back"
                          : "View Projects",
                      style: TextStyle(decoration: TextDecoration.underline),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
