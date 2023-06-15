import 'package:flutter/material.dart';

import '../../app/utils.dart';
import 'sector.dart';

/// Log1Screen
class Log1Screen extends StatefulWidget {
  const Log1Screen({
    super.key,
  });

  @override
  State<Log1Screen> createState() => _Log1ScreenState();
}

class _Log1ScreenState extends State<Log1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cleanScreenClassName(widget.toString())),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.width,
          child: WidgetToRenderBoxAdapter(
            renderBox: buildSectorExample(),
          ),
        ),
      ),
    );
  }
}
