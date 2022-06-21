import 'package:flutter/material.dart';

void main() => runApp(
      /*MaterialApp(
        home: Scaffold(
          backgroundColor: Color(0xFFD7E0FF),
          appBar: AppBar(
            backgroundColor: Colors.lime[900],
            title: const Center(
              child: Text('Merhaba Dünya'),
            ),
          ),
          body: Center(
            child: Column(
              children: [
                Center(
                  child: Image.asset('Images/mutlu_bayramlar.jpg'),
                ),
                const Center(
                  child: Text(
                    'Mutlu Bayramlar',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),*/
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /*appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text('Selam Dünya'),
        ),*/
        backgroundColor: Colors.brown[500], //const Color(0xff616161),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/images/kahve.jpg'),
                ),
                Text(
                  "Bi' Kahve versem ?",
                  style: TextStyle(
                    fontFamily: 'DancingScript',
                    fontSize: 37,
                    color: Color(0xffd7ccc8),
                  ),
                ),
                Text(
                  'Sadece bir tık uzağında',
                  style: TextStyle(
                    fontFamily: 'DancingScript',
                    fontSize: 18,
                    color: Color(0xffefebe9),
                  ),
                ),
              ],
            ),
          ),
          /*Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.white,
                height: 100,
                child: Text('1. Containercik'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
              Container(
                color: Colors.lightBlue,
                width: 200,
                height: 100,
                child: Text('2. Containercik'),
              )
            ],
          ),*/
          /*Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                child: Container(
                  color: Colors.orange,
                  width: 200,
                  height: 100,
                  child: const Text('1. Container'),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Flexible(
                child: Container(
                  color: Colors.green,
                  width: 200,
                  height: 100,
                  child: const Text('2. Container'),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Flexible(
                child: Container(
                  color: Colors.blue,
                  width: 200,
                  height: 100,
                  child: const Text('3. Container'),
                ),
              ),
            ],
          ),*/ // Row Widgeti
          /*Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.orange,
                width: 200,
                height: 100,
                child: Text('1. Container'),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                color: Colors.green,
                width: 200,
                height: 100,
                child: Text('2. Container'),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                color: Colors.blue,
                width: 200,
                height: 100,
                child: Text('3. Container'),
              ),
            ],
          ),*/ //Column Widgeti
          /*Container(
            //transform: Matrix4.rotationZ(-0.2),
            width: 100,
            height: 100,
            alignment: Alignment.topRight,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadiusDirectional.circular(16),
              color: Colors.white,
            ),
            //margin: const EdgeInsets.all(16), //Container Boşluk
            margin: const EdgeInsets.only(
              left: 12,
              top: 12,
            ),
            padding: const EdgeInsets.all(16), //Elemanın Boşluğu
            child: Center(
              child: Transform(
                transform: Matrix4.rotationZ(-0.2),
                alignment: FractionalOffset.center,
                child: Text('Deneme'),
              ),
            ),
          ),*/ // Tekli Container
        ),
      ),
    );
  }
}
