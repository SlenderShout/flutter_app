import 'package:flutter/material.dart';

import 'nimetler.dart';

class YScaffold extends StatelessWidget {
  const YScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Bugünün Spesiyali'),
      ),
      body: nimetler(),
      backgroundColor: Colors.white,
    );
  }
}