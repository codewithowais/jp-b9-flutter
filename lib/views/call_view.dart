import 'package:flutter/material.dart';

class CallView extends StatelessWidget {
  const CallView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal),
      body: Column(
        children: [
          Text("THIS IS CALL Screen"),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("GO BACK"),
          ),
        ],
      ),
    );
  }
}
