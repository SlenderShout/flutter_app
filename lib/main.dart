import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lime,
          appBar: AppBar(
            backgroundColor: Colors.lime[900],
            title: const Text('Merhaba Dünya'),
          ),
          body: Center(
            child: Image.network(
                'https://i.pinimg.com/564x/44/ab/03/44ab033488f3b73e1c24e2ae59d5106f.jpg'),
          ),
        ),
      ),
    );
