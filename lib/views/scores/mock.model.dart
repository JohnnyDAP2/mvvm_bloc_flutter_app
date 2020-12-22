import 'package:flutter/cupertino.dart';

class SoccerMatch {
  final String nameLeague;
  final String teamHome;
  final String teamAway;
  final int scoreHome;
  final int scoreAway;
  final DateTime d;

  SoccerMatch(
      {this.nameLeague,
      this.teamHome,
      this.teamAway,
      this.scoreHome,
      this.scoreAway,
      this.d});
}
