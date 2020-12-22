import 'package:flutter/material.dart';
import 'package:mvvm_bloc_flutter_app/views/scores/const/const.dart';

// live show scores teams
class ListTileScores extends StatelessWidget {
  final String teamHome;
  final String teamAway;
  ListTileScores({this.teamHome, this.teamAway});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: kTileColor,
      leading: Text(
        '${teamHome ?? 'none'}',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      trailing: Text(
        '${teamAway ?? 'none'}',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
