import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_app/falci/fal.dart';
import 'package:flutter_app/falci/fal_scaffold.dart';

var i = 0;

SizedBox SizedBox20() => SizedBox(
      height: 20,
    );

int RandomFal(min, max) {
  return min + Random().nextInt(max - min);
}
