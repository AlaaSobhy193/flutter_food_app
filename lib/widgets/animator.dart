import 'package:flutter/material.dart';

class Animator {
  final AnimationController controller;
  final Animation<double> bgDropBlur;
  final Animation<double> txOpacity;
  final Animation<double> scrollerTranslation;
  final Animation<double> widgetSize;

  Animator(this.controller)
      : bgDropBlur = Tween(begin: 0.0, end: 0.5).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.00, 0.800, curve: Curves.ease))),
        txOpacity = Tween(begin: 0.5, end: 1.0).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.00, 0.500, curve: Curves.ease))),
        scrollerTranslation = Tween(begin: 0.0, end: 0.5).animate(
            CurvedAnimation(
                parent: controller,
                curve: Interval(0.00, 0.500, curve: Curves.ease))),
        widgetSize = Tween(begin: 0.0, end: 0.5).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.00, 0.500, curve: Curves.ease)));
}
