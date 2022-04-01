import 'package:flutter/material.dart';

import '../../constants/navigation_constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
            onPressed: () => _navigateToGamePage(context),
            child: const Text('Go to Game Page')),
      ),
    );
  }

  _navigateToGamePage(BuildContext context) {
    return Navigator.pushNamedAndRemoveUntil(
        context, NavigationConstants.game, (route) => false);
  }
}
