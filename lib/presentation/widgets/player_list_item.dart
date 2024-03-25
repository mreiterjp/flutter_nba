import 'package:flutter/material.dart';
import 'package:flutter_nba/domain/entity/player_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PlayerListItem extends StatelessWidget {
  final PlayerEntity player;
  final VoidCallback onClick;

  const PlayerListItem({super.key, required this.player, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 8.0,
      child: InkWell(
        onTap: onClick,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              CachedNetworkImage(
                imageUrl: player.avatarUrl ?? "http://via.placeholder.com/60x60",
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
                width: 60,
                height: 60,
              ),
              SizedBox(width: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${player.firstName} ${player.lastName}',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    'Position: ${player.position}',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  if (player.teamEntity != null)
                    Text(
                      'Team: ${player.teamEntity?.name ?? ""}',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}