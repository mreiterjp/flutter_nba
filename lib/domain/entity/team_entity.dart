import 'dart:math';

import 'package:flutter_nba/data/model/team.dart';

class TeamEntity {
  final int id;
  final String abbreviation;
  final String city;
  final String conference;
  final String division;
  final String fullName;
  final String name;

  TeamEntity({
    required this.id,
    required this.abbreviation,
    required this.city,
    required this.conference,
    required this.division,
    required this.fullName,
    required this.name,
  });

  static TeamEntity generateFakeTeamEntity(int id) {
    return TeamEntity(
      id: Random().nextInt(30) + 1,
      abbreviation: 'abbr $id',
      city: 'City$id',
      conference: ['East', 'West'][Random().nextInt(2)],
      division: 'Division$id',
      fullName: 'Team Full Name: $id',
      name: 'name $id',
    );
  }
}

extension TeamExtension on Team {
  TeamEntity toEntity() {
    return TeamEntity(
      id: id,
      abbreviation: abbreviation,
      city: city,
      conference: conference,
      division: division,
      fullName: fullName,
      name: name,
    );
  }
}
