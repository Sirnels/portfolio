import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_app/components/navigation.dart';

import '../../../constants.dart';

class Menu extends ConsumerStatefulWidget {
  final bool isMobile;
  final bool isTablet;
  final bool isDesktop;

  Menu(this.isMobile, this.isTablet, this.isDesktop);
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends ConsumerState<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = ["Home", "Services", "Portfolio", "Contact"];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      // width: widget.isMobile == true
      //     ? MediaQuery.of(context).size.width * 0.4
      //     : widget.isTablet == true
      //         ? MediaQuery.of(context).size.width * 0.8
      //         : 910,
      constraints: BoxConstraints(
          maxWidth: widget.isMobile == true
              ? MediaQuery.of(context).size.width 
              : widget.isTablet == true
                  ? MediaQuery.of(context).size.width * 0.9
                  : MediaQuery.of(context).size.width * 0.9),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [kDefaultShadow],
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            menuItems.length,
            (index) => buildMenuItem(index),
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(int index) => InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
            ref.read(initNavigation.notifier).state = index;
          });
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
            value
                ? hoverIndex = index
                : hoverIndex = ref.read(initNavigation.notifier).state;
          });
        },
        child: Container(
          constraints: BoxConstraints(minWidth: 122),
          height: 100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                menuItems[index],
                style: TextStyle(fontSize: 20, color: kTextColor),
              ),
              // Hover
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom: ref.read(initNavigation.notifier).state != index &&
                        selectedIndex != index &&
                        hoverIndex == index
                    ? -20
                    : -32,
                child: Image.asset("assets/images/Hover.png"),
              ),
              // Select
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom: ref.read(initNavigation.notifier).state == index
                    ? -2
                    : selectedIndex == index
                        ? -2
                        : -32,
                child: Image.asset("assets/images/Hover.png"),
              ),
            ],
          ),
        ),
      );
}
