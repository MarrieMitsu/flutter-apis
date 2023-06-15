import 'package:flutter/material.dart';

import 'screens/home.dart';

/// App
class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter APIs',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
