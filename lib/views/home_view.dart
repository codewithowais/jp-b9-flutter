import 'package:facebook/views/call_view.dart';
import 'package:facebook/views/status_view.dart';
import 'package:facebook/widgets/customListChatTile.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Whatsapp"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => const StatusView(),
                ),
              );
            },
            icon: Icon(Icons.stop),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(builder: (context) => const CallView()),
              );
            },
            icon: Icon(Icons.call_sharp),
          ),
        ],
      ),
      body: ListView(
        children: [
          customListChatTile(title: "Owais", subtitle: "helloo... "),
          customListChatTile(title: "AHmed", subtitle: "helloo... "),
          customListChatTile(title: "Abdullah", subtitle: "helloo... "),
          customListChatTile(title: "Ali", subtitle: "helloo... "),
          customListChatTile(title: "Bilal", subtitle: "helloo... "),
        ],
      ),
    );
  }
}
