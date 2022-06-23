import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_app/falci/fal.dart';
import 'package:flutter_app/falci/fal_scaffold.dart';
import 'package:google_fonts/google_fonts.dart';

var i = 0;

SizedBox SizedBox20() => SizedBox(
      height: 20,
    );

int RandomFal(min, max) {
  return min + Random().nextInt(max - min);
}

class FalciTeyze extends StatelessWidget {
  const FalciTeyze({
    Key? key, this.asktahmini, this.paratahmini, this.guntahmini,
  }) : super(key: key);
  final Function()? asktahmini;
  final Function()? paratahmini;
  final Function()? guntahmini;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(50),
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
              onTap: asktahmini,
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
              onTap: paratahmini,
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
              onTap: guntahmini,
              leading: Icon(Icons.timelapse, color: Colors.blue, size: 30),
              title: Text(
                'Günlük Tahmin',
                style: GoogleFonts.loveYaLikeASister(
                    fontSize: 25, color: Colors.blue),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
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
        ],
    ),
      ),
    );
  }
}
