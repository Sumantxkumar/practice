import 'package:flutter/material.dart';

class DateTimePickerScreen extends StatefulWidget {
  const DateTimePickerScreen({super.key});

  @override
  State<DateTimePickerScreen> createState() => _DateTimePickerScreenState();
}

class _DateTimePickerScreenState extends State<DateTimePickerScreen> {
  var dateFormat = DateFormat("dd-MM-yyyy");
  var pickDate = "Get Date";
  var timeFormat = DateFormat("hh:mm aa");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DATE TIME PICKER"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
              onPressed: () async {
                print("clicked");
                var date = await showDatePicker(
                    context: context,
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2098));
                var formattedDate = dateFormat.format(date ?? DateTime.now());
                pickDate = formattedDate;
                setState(() {});
                print("date $date formattedDate");
              },
              child: Text(pickDate)),
          ElevatedButton(
              onPressed: () {
                showDatePicker(
                        context: context,
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2098))
                    .then((value) {
                  print(
                      "value $value ${dateFormat.format(value ?? DateTime.now())}");
                });
              },
              child: const Text("GET DATE W/O AWAIT")),
          OutlinedButton(
              onPressed: () async {
                var pickedTime = await showTimePicker(
                    context: context, initialTime: TimeOfDay.now());
                print("picked Time $pickedTime");
                var pickedtime = DateTime(
                    2024, 9, 7, pickedTime?.hour ?? 0, pickedTime?.minute ?? 0);
                var formattedTime = timeFormat.format(pickedtime);
                print("formatted Time $formattedTime");
              },
              child: const Text("ALERT DIALOG SHOWN"))
        ],
      ),
    );
  }

  static DateFormat(String s) {}
}
