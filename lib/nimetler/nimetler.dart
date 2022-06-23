import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class nimetler extends StatefulWidget {
  const nimetler({Key? key}) : super(key: key);

  @override
  State<nimetler> createState() => _nimetlerState();
}

class _nimetlerState extends State<nimetler> {
  int i = 1;
  int j = 1;
  int k = 1;

  int randomize() {
    return Random().nextInt(5) + 1;
  }

  void tikla() {
    setState(() {
      i = randomize();
      j = randomize();
      k = randomize();
    });
  } //Resim değişme fonksyonu
  

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: tikla,
                  child: Image.asset('assets/images/corba_$i.jpg')),
            ),
          ),
          Text(corbalar[i-1], style: GoogleFonts.staatliches(fontSize: 18,),),
          Container(
            child: Divider(
              color: Colors.lightBlue,
              ), 
              width: 200,
              ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: tikla,
                  child: Image.asset('assets/images/yemek_$j.jpg')),
            ),
          ),
          Text(yemekler[j-1], style: GoogleFonts.staatliches(fontSize: 18,),),
          Container(
            child: Divider(
              color: Colors.lightBlue,
              ), 
              width: 200,
              ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: tikla,
                child: Image.asset('assets/images/tatli_$k.jpg'),
              ),
            ),
          ),
          Text(tatlilar[k-1], style: GoogleFonts.staatliches(fontSize: 18,),),
          Container(
            child: Divider(
              color: Colors.lightBlue,
              ), 
              width: 200,
              ),
        ],
      ),
    );
  }
}



List<String> corbalar = [
    'Mercimek',
    'Tarhana',
    'Tavuksuyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];
List<String> yemekler = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
List<String> tatlilar = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];
