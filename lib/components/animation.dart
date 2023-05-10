import 'package:flutter/material.dart';

class SlideTransitionContainer extends StatefulWidget {
  final Widget child;
  final double offsetX;
  final double offsetY;
  final int duration;

  SlideTransitionContainer({this.child, this.offsetX=-1.0, this.offsetY=0.0, this.duration=500});

  @override
  _SlideTransitionContainerState createState() =>
      _SlideTransitionContainerState();
}

class _SlideTransitionContainerState extends State<SlideTransitionContainer>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.duration),
    );

    _animation = Tween<Offset>(
      begin:  Offset(widget.offsetX, widget.offsetY),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }
}
