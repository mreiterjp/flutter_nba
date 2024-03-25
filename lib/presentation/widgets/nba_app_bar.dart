import 'package:flutter/material.dart';

enum NbaScreen { Player } // Add other screens here

class NbaAppBar extends StatelessWidget implements PreferredSizeWidget {
  final NbaScreen currentScreen;
  final bool canNavigateBack;
  final VoidCallback navigateUp;

  const NbaAppBar({
    super.key,
    required this.currentScreen,
    required this.canNavigateBack,
    required this.navigateUp,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(_getTitle(currentScreen)),
      leading: canNavigateBack
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: navigateUp,
            )
          : null,
    );
  }

  String _getTitle(NbaScreen screen) {
    switch (screen) {
      case NbaScreen.Player:
        return 'Player'; // Replace with actual title
      // Add other cases for other screens
    }
  }
}
