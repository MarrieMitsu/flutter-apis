import 'package:flutter/material.dart';

import '../../render_object/screen.dart';
import '../utils.dart';

const List<Widget> _sections = [
  RenderObjectScreen(),
];

/// HomeScreen
class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _sections.length,
        itemBuilder: (context, idx) {
          return ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => _sections[idx],
                ),
              );
            },
            title: Text(
              cleanScreenClassName(_sections[idx].toString()),
            ),
          );
        },
      ),
    );
  }
}
