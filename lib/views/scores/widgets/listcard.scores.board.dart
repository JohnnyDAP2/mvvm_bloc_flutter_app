import 'package:flutter/material.dart';
import 'package:mvvm_bloc_flutter_app/views/scores/const/const.dart';
import 'package:mvvm_bloc_flutter_app/views/scores/soccer.league.dart';
import 'package:mvvm_bloc_flutter_app/views/scores/widgets/listtile.card.dart';

//live Score Board
class ListCardScoresBoard extends StatelessWidget {
  final SoccerLeague soccerLeague;

  ListCardScoresBoard({@required this.soccerLeague});

  @override
  Widget build(BuildContext context) {
    print(soccerLeague);
    return ListTileScores(
      teamHome: soccerLeague.listSoccer[1].teamHome,
      teamAway: soccerLeague.listSoccer[1].teamAway,
    );
    return Container(
      margin: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: ExpansionTile(
        collapsedBackgroundColor: kBackgroundLeagueColor,
        backgroundColor: Color(0xff262626),
        // leading: CircleAvatar(
        //   backgroundImage: NetworkImage('https://i.imgur.com/BoN9kdC.png'),
        // ),
        title: Text('England : ${soccerLeague.nameLeague}'),
        children: <Widget>[
          Container(
            child: Text('test'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, int index) {
                return ListTileScores(
                  teamHome: soccerLeague.listSoccer[index].teamHome,
                  teamAway: soccerLeague.listSoccer[index].teamAway,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
