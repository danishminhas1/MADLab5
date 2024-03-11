import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('App Bar'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        color: Colors.blue,
        child: const YellowColumn(),
      ),
    );
  }
}

class YellowColumn extends StatelessWidget {
  const YellowColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      color: Colors.yellow,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GreenRow(),
          SizedBox(height: 20),
          Text(
            'Text',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class GreenRow extends StatelessWidget {
  const GreenRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.green,
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              'Some More Text',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          VerticalDivider(
            color: Colors.black,
            thickness: 1,
            width: 20,
          ),
          Icon(
            Icons.account_circle,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
