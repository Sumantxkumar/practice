import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('layout'),
          foregroundColor: Colors.red,
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text('Discover the best product!'),
            Image.network('https://picsum.photos/250?image=9'),
          ]),
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
            ),
          ),
        ]));
  }
}
