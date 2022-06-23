import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import 'fal.dart';
import 'falci_teyze.dart';



class Falci extends StatefulWidget {
  const Falci({super.key});

  @override
  State<Falci> createState() => _FalciState();
}

class _FalciState extends State<Falci> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Falcı Teyze'),
        backgroundColor: Colors.purpleAccent,
      ),
      backgroundColor: Colors.purple,
      body: FalciTeyze(asktahmini: () {
                setState(() {
                  i = RandomFal(1, 5);
                });
                
              }, paratahmini:  () {
                setState(() {
                  i = RandomFal(6, 10);
                });
              }, guntahmini:  () {
                setState(() {
                  i = RandomFal(11, 15);
                });
              },),
            
    );
  }
}


