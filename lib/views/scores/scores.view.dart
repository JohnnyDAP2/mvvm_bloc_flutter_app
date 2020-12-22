import 'dart:core';

import 'package:flutter/material.dart';
import 'package:mvvm_bloc_flutter_app/views/scores/const/const.dart';
import 'package:mvvm_bloc_flutter_app/views/scores/mock.model.dart';
import 'package:mvvm_bloc_flutter_app/views/scores/soccer.league.dart';
import 'package:mvvm_bloc_flutter_app/views/scores/widgets/listcard.scores.board.dart';
import 'package:mvvm_bloc_flutter_app/views/scores/widgets/tabscrollable.socres.dart';
import 'widgets/widgets.dart';

class ScoreScreen extends StatefulWidget {
  @override
  _ScoreScreenState createState() => _ScoreScreenState();
}

List<SoccerLeague> list = [
  SoccerLeague(
    'FA CUP',
    [
      SoccerMatch(
          nameLeague: 'FA CUP',
          teamHome: 'Asenal',
          teamAway: 'Chelsea',
          scoreHome: 3,
          scoreAway: 1),
      SoccerMatch(
          nameLeague: 'La Liga',
          teamHome: 'Bacelona',
          teamAway: 'Real Madrid',
          scoreHome: 3,
          scoreAway: 1),
      SoccerMatch(
          nameLeague: 'FA CUP',
          teamHome: 'Asenal',
          teamAway: 'Chelsea',
          scoreHome: 3,
          scoreAway: 1),
    ],
  ),
  SoccerLeague(
    'FA CUP',
    [
      SoccerMatch(
          nameLeague: 'FA CUP',
          teamHome: 'Asenal',
          teamAway: 'Chelsea',
          scoreHome: 3,
          scoreAway: 1),
      SoccerMatch(
          nameLeague: 'La Liga',
          teamHome: 'Bacelona2',
          teamAway: 'Real Madrid2',
          scoreHome: 3,
          scoreAway: 1),
      SoccerMatch(
          nameLeague: 'FA CUP',
          teamHome: 'Asenal',
          teamAway: 'Chelsea',
          scoreHome: 3,
          scoreAway: 1),
    ],
  ),
];

var match = {
  'FA CUP': {
    'teamHome': ['Liverpool ', 'Man United', 'Man City', 'Chelsea'],
    'teamAway': ['Aston Villa', 'Leicester City', 'Leeds United']
  },
  'La Liga': {
    'teamHome': ['Atletico Madrid', 'Real Madrid', 'Real Sociedad'],
    'teamAway': ['Vilarreal', 'Barcelona', 'Granada']
  }
};

class _ScoreScreenState extends State<ScoreScreen> {
  // List<String> nameLeague = ['FA CUP', 'Premier League'];
  // List<String> teamHomeFA = ['Liverpool ', 'Man United', 'Man City', 'Chelsea'];
  // List<String> teamHomeLA = ['Atletico Madrid', 'Real Madrid', 'Real Sociedad'];
  // List<String> teamAwayFA = ['Aston Villa', 'Leicester City', 'Leeds United'];
  // List<String> teamAwayLA = ['Vilarreal', 'Barcelona', 'Granada'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kAppBarColor,
          title: Center(
            child: Text(
              'Scores',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          bottom: PreferredSize(
            child: TabScrollableScores(tabs: [
              Tab(
                child: Text('Live', style: kTextStyleTabColor),
              ),
              Tab(
                child: Text('Date', style: kTextStyleTabColor),
              ),
              Tab(
                child: Text('1x2', style: kTextStyleTabColor),
              ),
            ]),
            preferredSize: Size.fromHeight(60.0),
          ),
          actions: [
            AppBarButton(
              onGesture: () => null,
              icon: Icon(Icons.search),
            ),
            AppBarButton(
              onGesture: () => null,
              icon: Icon(Icons.notifications),
            ),
          ],
        ),
        body: Stack(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.0),
                      ListCardScoresBoard(
                        soccerLeague: list[index],
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
