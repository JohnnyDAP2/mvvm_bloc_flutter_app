import 'package:flutter/material.dart';

// search , notification button function
class AppBarButton extends StatelessWidget {
  final Function onGesture;
  final Widget icon;

  AppBarButton({this.onGesture, this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onGesture,
      child: Padding(
        padding: EdgeInsets.only(right: 8.0),
        child: icon,
      ),
    );
  }
}
