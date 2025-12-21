import 'package:flutter/material.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(backgroundColor: Colors.teal),
      body: ListView(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.white,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Container(height: 100, width: 100, color: Colors.purple),
              ],
            ),
          ),

          Text("THIS IS STATUS Screen"),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("GO BACK"),
          ),

          Image.asset('assets/images/car.jpg'),
        ],
      ),
    );
  }
}
