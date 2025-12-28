import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  List users = [
    {"name": "Codewithowais", "number": "0300000000"},
    {"name": "Codewithabs", "number": "0300000000"},
    {"name": "Codewithha", "number": "0300000000"},
    {"name": "Codewithabc", "number": "0300000000"},
  ];

  addUser() {
    users.add({"name": "Codewithabc", "number": "0300000000"});
    setState(() {});
  }

  deleteUser(index) {
    users.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: ListView.builder(
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
                  IconButton(
                    onPressed: () {
                      deleteUser(index);
                    },
                    icon: Icon(Icons.delete),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addUser();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


// List users = [
//   {
//     "name": "Codewithowais",
//     "number": "0300000000"
//   },
//   {
//     "name": "Codewithabs",
//     "number": "0300000000"
//   },
//   {
//     "name": "Codewithha",
//     "number": "0300000000"
//   },
//   {
//     "name": "Codewithabc",
//     "number": "0300000000"
//   },
// ];
// for(var i = 0; i < users.length; i++) {
//   print(users[i]['name']);
// }