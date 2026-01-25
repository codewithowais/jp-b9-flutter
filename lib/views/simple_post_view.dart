import 'package:flutter/material.dart';
import 'package:facebook/widgets/simplePostCard.dart';

class SimplePostView extends StatelessWidget {
  const SimplePostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Posts"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: const [
          SimplePostCard(
            name: "John Doe",
            timeAgo: "2 hours ago",
            postText: "Hello! This is my first post.",
            likes: 45,
          ),
          SimplePostCard(
            name: "Jane Smith",
            timeAgo: "5 hours ago",
            postText: "Flutter is awesome! 🚀",
            likes: 120,
          ),
          SimplePostCard(
            name: "Bob Wilson",
            timeAgo: "1 day ago",
            postText: "Learning Flutter step by step.",
            likes: 23,
          ),
        ],
      ),
    );
  }
}
