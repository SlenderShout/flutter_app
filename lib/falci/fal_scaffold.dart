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
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('assets/images/falci.png'),
                width: 150,
              ),
            ),
            SizedBox20(),
            Card(
              child: ListTile(
                onTap: () {
                  setState(() {
                    i = RandomFal(1, 5);
                  });
                  
                },
                leading: Icon(Icons.favorite, color: Colors.red, size: 30),
                title: Text(
                  'Aşk Tahmini',
                  style: GoogleFonts.loveYaLikeASister(
                      fontSize: 25, color: Colors.red),
                ),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  setState(() {
                    i = RandomFal(6, 10);
                  });
                },
                leading: Icon(Icons.money, color: Colors.green, size: 30),
                title: Text(
                  'Para Tahmini',
                  style: GoogleFonts.loveYaLikeASister(
                      fontSize: 25, color: Colors.green),
                ),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  setState(() {
                    i = RandomFal(11, 15);
                  });
                },
                leading: Icon(Icons.timelapse, color: Colors.blue, size: 30),
                title: Text(
                  'Günlük Tahmin',
                  style: GoogleFonts.loveYaLikeASister(
                      fontSize: 25, color: Colors.blue),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  yanitlar[i],
                  style: GoogleFonts.inconsolata(
                    fontSize: 20,
                    color: Color.fromARGB(197, 255, 255, 255),
                  ),
                ),
              ),
            ),
          ],
    ),
        ),
      ),
    );
  }
}
