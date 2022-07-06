import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'audio_expanded.dart';
import 'butonlar.dart';

class Drum extends StatelessWidget {
  Drum({super.key});
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Column(
          children: [
            AudioExpanded(Colors.red, Colors.blue),
            AudioExpanded(Colors.green, Colors.cyan),
            AudioExpanded(Colors.orange, Colors.purple),
            AudioExpanded(Colors.lime, Colors.pink),
          ],
        ),
      ),
    );
  }
}
