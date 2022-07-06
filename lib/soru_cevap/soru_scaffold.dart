import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/class/soru.dart';
import 'package:flutter_app/soru_cevap/constrants.dart';

class Soru extends StatefulWidget {
  const Soru({super.key});

  @override
  State<Soru> createState() => _SoruState();
}

class _SoruState extends State<Soru> {
  List<Widget> secim = [];
  var i = 0;
  dynamic puan = 0;

  List<SoruCevap> soruBankasi = [
    SoruCevap(
        sorular: "Titanic gelmiş geçmiş en büyük gemidir", cevaplar: false),
    SoruCevap(
        sorular: "Dünyadaki tavuk sayısı insan sayısından fazladır",
        cevaplar: true),
    SoruCevap(sorular: "Kelebeklerin ömrü bir gündür", cevaplar: false),
    SoruCevap(sorular: "Dünya düzdür", cevaplar: false),
    SoruCevap(
        sorular: "Kaju fıstığı aslında bir meyvenin sapıdır", cevaplar: true),
    SoruCevap(
        sorular: "Fatih Sultan Mehmet hiç patates yememiştir", cevaplar: true),
    SoruCevap(sorular: "Fransızlar 80 demek için, 4 - 20 der", cevaplar: true),
  ];
  String sorular() {
    if (i > 6) {
      i = 0;
    }
    return soruBankasi[i].sorular;
  }

  cevap(bool yanit) {
    deger();
    //print(soruBankasi[i].cevaplar);
    //print(yanit);
    if (soruBankasi[i-1].cevaplar == yanit) {
      //print(true);
      secim.add(dogru);
      puan++;
    } else {
      //print(false);
      secim.add(yanlis);
    }
  }

  deger() {
    if (i > 6) {
      i = 0;
      secim.clear();
    }
    i++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[700],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    'Puanın $puan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      sorular(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Wrap(spacing: 5.0, runSpacing: 2.0, children: secim),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red[400],
                                padding: EdgeInsets.all(12),
                                textStyle: TextStyle(
                                  color: Colors.white,
                                )),
                            //padding: EdgeInsets.all(12),
                            //textColor: Colors.white,
                            //color: Colors.red[400],
                            child: Icon(
                              Icons.thumb_down,
                              size: 30.0,
                            ),
                            onPressed: () {
                              setState(() {
                                cevap(false);
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.green[400],
                                padding: EdgeInsets.all(12),
                                textStyle: TextStyle(
                                  color: Colors.white,
                                )),
                            //padding: EdgeInsets.all(12),
                            //textColor: Colors.white,
                            // color: Colors.green[400],
                            child: Icon(Icons.thumb_up, size: 30.0),
                            onPressed: () {
                              setState(
                                () {
                                  cevap(true);
                                  // puanHesapla();
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ],
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
