import 'package:flutter/material.dart';
import 'package:flutter_app/soru_cevap/soru_scaffold.dart';
import 'drum/drum_scaffold.dart';
import 'package:flutter_app/falci/fal_scaffold.dart';
import 'package:flutter_app/nimetler/y_scaffold.dart';
import 'package:google_fonts/google_fonts.dart';

import 'kahve/bi_scaffold.dart';
import 'kahve/newWidget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Soru(),
    );
  }
}
