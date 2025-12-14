import 'package:facebook/widgets/customListChatTile.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text("Whatsapp")),
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

