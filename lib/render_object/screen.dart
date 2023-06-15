import 'package:flutter/material.dart';

import '../app/utils.dart';
import 'log_1/screen.dart';

const List<Widget> _logs = [
  Log1Screen(),
];

/// RenderObjectScreen
class RenderObjectScreen extends StatelessWidget {
  const RenderObjectScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cleanScreenClassName(toString())),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _logs.length,
        itemBuilder: (context, idx) {
          return ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => _logs[idx],
                ),
              );
            },
            title: Text(
              cleanScreenClassName(_logs[idx].toString()),
            ),
          );
        },
      ),
    );
  }
}
