import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nba/di/locator.dart';
import 'package:flutter_nba/presentation/view/player_list.dart';

void main() {
  Fimber.plantTree(DebugTree.elapsed());
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Nba Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PlayerListScreen(),
    );
  }
}
