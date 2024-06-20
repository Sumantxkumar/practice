import 'package:flutter/material.dart';

class RowPractice extends StatefulWidget {
  const RowPractice({super.key});

  @override
  State<RowPractice> createState() => _RowPracticeState();
}

class _RowPracticeState extends State<RowPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('stawberr pavlova'),
      ),
      body: Column(
        children: [
          Text(
              'The particular joy of this dreamy dessert, which was named in honor of the Russian ballerina, is that the meringue base can be made in advance. Then to serve it, drizzle the strawberries with a little balsamic vinegar and vanilla (a combination that brings out the fullest essential flavor of the fruit), whip some cream and arrange it all on a plate. It’s magnificent, and deliriously easy.'),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: Colors.green[500]),
              Icon(Icons.star, color: Colors.green[500]),
              Icon(Icons.star, color: Colors.green[500]),
              Icon(Icons.star, color: Colors.black),
              Icon(Icons.star, color: const Color.fromARGB(255, 218, 20, 20)),
            ],
          ),
          Column(
            children: [
              Text('170 reviews'),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                const Text('PREP:'),
                const Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer,
                    color: const Color.fromARGB(255, 175, 150, 76)),
                const Text('COOK:'),
                const Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant,
                    color: const Color.fromARGB(255, 175, 76, 76)),
                const Text('FEEDS:'),
                const Text('4-6'),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
