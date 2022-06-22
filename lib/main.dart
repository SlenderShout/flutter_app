import 'package:flutter/material.dart';

void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Bugünün Spesiyali'),
        ),
        body: nimetler(),
      ),
    );
  }
}

class nimetler extends StatefulWidget {
  const nimetler({Key? key}) : super(key: key);

  @override
  State<nimetler> createState() => _nimetlerState();
}

class _nimetlerState extends State<nimetler> {
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {},
                  child: Image.asset('assets/images/corba_$i.jpg')),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {},
                  child: Image.asset('assets/images/yemek_$i.jpg')),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {},
                child: Image.asset('assets/images/tatli_$i.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
