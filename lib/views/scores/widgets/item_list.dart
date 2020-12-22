import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mvvm_bloc_flutter_app/views/scores/mock.model.dart';
import 'package:mvvm_bloc_flutter_app/views/scores/mock.model.dart';

import '../mock.model.dart';

class ItemList extends StatelessWidget {
  final SoccerMatch soccerMatch;
  ItemList({this.soccerMatch});
  Widget score() {
    return Row(
      children: [
        Text(''),
        Text(''),
        Text(''),
      ],
    );
  }

  Widget team() {
    return Row(
      children: [
        Text(''),
        Container(), //img
        Text(''),
        Container(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('27'),
        Row(
          children: [
            //img
            team(),
            score(),
            team(),
          ],
        ),
        Divider(),
      ],
    );
  }
}
