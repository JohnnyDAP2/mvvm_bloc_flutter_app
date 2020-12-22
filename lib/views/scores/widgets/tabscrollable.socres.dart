import 'package:flutter/material.dart';
import 'package:mvvm_bloc_flutter_app/views/scores/const/const.dart';

class TabScrollableScores extends StatelessWidget {
  final List<Widget> tabs;
  TabScrollableScores({this.tabs});
  @override
  Widget build(BuildContext context) {
    return TabBar(
      unselectedLabelColor: Color(0xffA6A6A6).withOpacity(0.3),
      labelColor: kIndicatorTabColor,
      indicatorColor: kIndicatorTabColor,
      tabs: tabs,
    );
  }
}
