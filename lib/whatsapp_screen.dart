import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WhatsappScreen extends StatefulWidget {
  const WhatsappScreen({super.key});

  @override
  State<WhatsappScreen> createState() => _WhatsappScreenState();
}

class _WhatsappScreenState extends State<WhatsappScreen> {
  var _counter = 1;

  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('whatsapp'),
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network('https://picsum.photos/250?image=9'),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('NAME'),
                Text('Whatsapp screen is shown here'),
              ],
            )
          ],
        ),
        FloatingActionButton.large(
          onPressed: () {
            print(" ${controller.text}");
          },
          child: const Icon(Icons.play_arrow_sharp),
        ),
        const SizedBox(height: 20),
        Text('BUTTON'),
        TextField(
          controller: controller,
          decoration: InputDecoration(
              helperText: "Test", focusedBorder: OutlineInputBorder()),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter++;
          setState(() {});
        },
        child: Icon(Icons.ac_unit_sharp),

         return Text("position $Text ");
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
