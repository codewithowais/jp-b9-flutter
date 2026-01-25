import 'package:facebook/widgets/fbPostCard.dart';
import 'package:flutter/material.dart';

class FbPostView extends StatelessWidget {
  const FbPostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text("Whatsapp")),
      body: ListView(
        children: const [
          FbPostCard(
            name: "CodeWithOwais",
            timeAgo: "2h",
            text: "Just shipped a new update 🚀",
            imageUrl: "https://picsum.photos/900/506",
            likes: 1240,
            comments: 98,
            shares: 12,
          ),
        ],
      ),
    );
  }
}
