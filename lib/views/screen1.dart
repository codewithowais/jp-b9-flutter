import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  Screen1({super.key});
  List users = [
    {"name": "Codewithowais", "number": "0300000000"},
    {"name": "Codewithabs", "number": "0300000000"},
    {"name": "Codewithha", "number": "0300000000"},
    {"name": "Codewithabc", "number": "0300000000"},
    {"name": "Codewithabc", "number": "0300000000"},
    {"name": "Codewithabc", "number": "0300000000"},
    {"name": "Codewithabc", "number": "0300000000"},
    {"name": "Codewithabc", "number": "0300000000"},
    {"name": "Codewithabc", "number": "0300000000"},
    {"name": "Codewithabc", "number": "0300000000"},
    {"name": "Codewithabc", "number": "0300000000"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          color: Colors.red,
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: users.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 4.0),
                child: ListTile(
                  title: Text("data ${users[index]['name']}"),
                  tileColor: Colors.grey,
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
