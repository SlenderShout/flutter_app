import 'package:flutter/material.dart';
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
      home: Falci(),
    );
  }
}




/*Row(
children: [
Icon(
Icons.phone,
color: Colors.white60,
),
SizedBox(
width: 20,
),
Text(
'+90 0512 423 21 12',
style: TextStyle(fontSize: 15, color: Colors.white),
)
],
),*/
