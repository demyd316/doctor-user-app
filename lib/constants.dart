import 'package:flutter/material.dart';

getWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

getHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

Color inactiveTabColor = Colors.grey;

var scaffoldBackgroundDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment(0.0, -1.0),
    end: Alignment(0.0, 1.0),
    colors: [const Color(0xfff8fbff), const Color(0xffe2e9f5)],
    stops: [0.0, 1.0],
  ),
);
