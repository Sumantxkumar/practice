import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddDialog extends StatefulWidget {
  const AddDialog({super.key});

  @override
  State<AddDialog> createState() => _AddDialogState();
}

class _AddDialogState extends State<AddDialog> {
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        children: [
          TextField(
            controller: nameController,
          ),
          OutlinedButton(
              onPressed: () {
                if (nameController.text.isEmpty) {
                  Fluttertoast.showToast(msg: "enter name");
                } else {
                  Navigator.of(context).pop(nameController.text);
                }
              },
              child: Text("Add name"))
        ],
      ),
    );
  }
}
