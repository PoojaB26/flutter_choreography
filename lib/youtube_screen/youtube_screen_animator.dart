import 'package:flutter/widgets.dart';

class YouTubeScreenAnimator {
  YouTubeScreenAnimator(this.controller)
      : profileOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
              parent: controller,
              curve: Interval(0.0, 0.2, curve: Curves.easeIn)),
        ),
        infoOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
              parent: controller,
              curve: Interval(0.25, 0.4, curve: Curves.easeIn)),
        ),
        infoX = Tween(begin: 15.0, end: 0.0).animate(
          CurvedAnimation(
              parent: controller,
              curve: Interval(0.25, 0.35, curve: Curves.easeIn)),
        ),
        placeHolderOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
              parent: controller,
              curve: Interval(0.3, 0.65, curve: Curves.decelerate)),
        ),
        buttonPop = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.900,
              1.0,
              curve: Curves.elasticOut,
            ),
          ),
        );

  final AnimationController controller;
  final Animation<double> profileOpacity;
  final Animation<double> infoX;
  final Animation<double> infoOpacity;
  final Animation<double> placeHolderOpacity;
  final Animation<double> buttonPop;
}
