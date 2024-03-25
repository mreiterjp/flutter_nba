import 'dart:math';

import 'package:fimber/fimber.dart';
import 'package:flutter_nba/data/model/player.dart';
import 'package:flutter_nba/domain/entity/team_entity.dart';

class PlayerEntity {
  final int id;
  final String firstName;
  final String lastName;
  final String position;
  final int heightFeet;
  final int heightInches;
  final int weightPounds;
  final String? avatarUrl;
  final TeamEntity? teamEntity;

  PlayerEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.position,
    required this.heightFeet,
    required this.heightInches,
    required this.weightPounds,
    this.avatarUrl,
    this.teamEntity,
  });

  static String getAvatarUrl(int id) {
    return 'https://picsum.photos/id/$id/60.jpg';
  }

  static PlayerEntity generateFakePlayerEntity({int? playerId}) {
    var id = playerId ?? Random().nextInt(1000) + 1;
    var playerEntity = PlayerEntity(
      id: id,
      firstName: 'Name $id',
      lastName: 'Surname $id',
      position: ['F', 'G', 'C'][Random().nextInt(3)],
      heightFeet: Random().nextInt(4) + 5,
      heightInches: Random().nextInt(12),
      weightPounds: Random().nextInt(101) + 150,
      teamEntity: TeamEntity.generateFakeTeamEntity(id),
      avatarUrl: getAvatarUrl(id),
    );
    Fimber.d('FakePlayer: $playerEntity');
    return playerEntity;
  }
}

extension PlayerExtension on Player {
  PlayerEntity toEntity() {
    return PlayerEntity(
      id: id,
      firstName: firstName ?? '',
      lastName: lastName ?? '',
      position: position ?? '',
      heightFeet: heightFeet ?? 0,
      heightInches: heightInches ?? 0,
      weightPounds: weightPounds ?? 0,
      avatarUrl: PlayerEntity.getAvatarUrl(id),
      teamEntity: team?.toEntity(),
    );
  }
}
