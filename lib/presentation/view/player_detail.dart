import 'package:flutter/material.dart';
import 'package:flutter_nba/domain/entity/player_entity.dart';
import 'package:flutter_nba/presentation/widgets/player_detail_item.dart';

class PlayerDetailScreen extends StatelessWidget {
  final PlayerEntity player;

  const PlayerDetailScreen({super.key, required this.player});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PlayerDetailItem(
          player: player,
          onClick: () {
            if (player.teamEntity != null) {
              //Navigator.push(context, '/team/${player.teamEntity?.id ?? -1}');
            }
          },
        ));
  }
}
