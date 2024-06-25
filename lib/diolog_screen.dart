import 'package:flutter/material.dart';

class DiologScreen extends StatefulWidget {
  const DiologScreen({super.key});

  @override
  State<DiologScreen> createState() => _DiologScreenState();
}

class _DiologScreenState extends State<DiologScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DIALOG'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text(""),
          )
        ],
      ),
    );
  }
}
