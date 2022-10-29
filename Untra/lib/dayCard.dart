import 'package:flutter/material.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class dayCard extends StatelessWidget {
  const dayCard ({super.key});

 // static const String _title = 'Flutter Code Sample';



  @override
  Widget build(BuildContext context) {
    return  MyStatelessWidget();

  }
}

class MyStatelessWidget extends StatefulWidget {
  const MyStatelessWidget({super.key});

  @override
  State<MyStatelessWidget> createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(child: ListTile(title: Column(
          children: [
            DropdownButton(items: list.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(), onChanged: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                dropdownValue = value!;
              });
            }, )
          ],
        ))),
      ],
    );
  }
}