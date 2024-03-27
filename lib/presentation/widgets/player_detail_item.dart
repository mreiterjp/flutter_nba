import 'package:flutter/material.dart';
import 'package:flutter_nba/domain/entity/player_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PlayerDetailItem extends StatelessWidget {
  final PlayerEntity player;
  final VoidCallback onClick;

  const PlayerDetailItem(
      {super.key, required this.player, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '${player.firstName} ${player.lastName}',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Row(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  // TODO: align the image to the top
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CachedNetworkImage(
                          imageUrl: player.avatarUrl ?? "http://via.placeholder.com/350x150",
                          placeholder: (context, url) => const CircularProgressIndicator(),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                          alignment: Alignment.topCenter,
                          width: 60,
                          height: 60,
                        )
                      ])),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Position: ${player.position}'),
                    Text('Height: ${player.heightFeetInches} feet-Inches'),
                    Text('Weight: ${player.weightPounds} lbs'),
                    Text('Jersey Number: ${player.jerseyNumber ?? 'N/A'}'),
                    Text('College: ${player.college ?? 'N/A'}'),
                    Text('Country: ${player.country ?? 'N/A'}'),
                    Text(
                        'Draft Year: ${player.draftYear?.toString() ?? 'N/A'}'),
                    Text(
                        'Draft Round: ${player.draftRound?.toString() ?? 'N/A'}'),
                    Text(
                        'Draft Number: ${player.draftNumber?.toString() ?? 'N/A'}'),
                    player.teamEntity != null
                        ? InkWell(
                            onTap: onClick,
                            child: Text(
                              'Team: ${player.teamEntity?.name ?? ""}',
                              // TODO: uncomment the below code once we have link to team detail page
                              //style: TextStyle(
                              //decoration: TextDecoration.underline,
                              //color: Theme.of(context).primaryColor,
                              //),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
