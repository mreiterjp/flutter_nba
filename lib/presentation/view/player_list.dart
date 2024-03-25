import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nba/di/locator.dart';
import 'package:flutter_nba/domain/entity/player_entity.dart';
import 'package:flutter_nba/domain/usecase/get_players_usecase.dart';
import 'package:flutter_nba/presentation/view/player_detail.dart';
import 'package:flutter_nba/presentation/widgets/player_list_item.dart';

class PlayerListScreen extends StatefulWidget {
  const PlayerListScreen({super.key});

  @override
  _PlayerListScreenState createState() => _PlayerListScreenState();
}

class _PlayerListScreenState extends State<PlayerListScreen> {
  late Stream<List<PlayerEntity>?> playerStream;

  @override
  void initState() {
    super.initState();
    final getPlayersUseCase = locator.get<GetPlayersUseCase>();
    playerStream = getPlayersUseCase.call();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<PlayerEntity>?>(
      stream: playerStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          Fimber.d('Error: ${snapshot.error}');
          return Text('Error: ${snapshot.error}');
        } else {
          final players = snapshot.data;
          if (players == null) {
            return Text('Error: ${snapshot.error}');
          } else {
            return ListView.builder(
              itemCount: players.length,
              itemBuilder: (context, index) {
                final player = players?[index];
                return PlayerListItem(
                  player: player!,
                  onClick: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            PlayerDetailScreen(player: player),
                      ),
                    );
                  },
                );
              },
            );
          }
        }
      },
    );
  }
}
