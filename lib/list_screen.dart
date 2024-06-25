import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  var _counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _counter,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Text("position $index");
          }),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _counter++;
        setState(() {});
      }),
    );
  }
}
