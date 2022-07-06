import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'drum_scaffold.dart';

var player = AudioPlayer();
TextButton Butonlar(Color renk) {
  return TextButton(
    onPressed: () {
      player.play(AssetSource('asd.mp3'));
    },
    child: Container(
      color: renk,
    ),
  );
}
