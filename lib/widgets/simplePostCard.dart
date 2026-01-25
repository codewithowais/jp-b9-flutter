import 'package:flutter/material.dart';

// Simple Facebook post card for beginners
class SimplePostCard extends StatelessWidget {
  // Basic data we need
  final String name; // Person's name
  final String timeAgo; // When posted (e.g., "2 hours ago")
  final String postText; // The post message
  final int likes; // Number of likes

  // Constructor
  const SimplePostCard({
    super.key,
    required this.name,
    required this.timeAgo,
    required this.postText,
    this.likes = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Add some space around the card
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      
      // White background with rounded corners and shadow
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      
      // Everything inside arranged vertically
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ========== HEADER: Profile picture, name, and time ==========
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                // Profile picture (circle avatar)
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                const SizedBox(width: 10),
                // Name and time
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Name
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Time
                      Text(
                        timeAgo,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                // Three dots menu
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                  iconSize: 20,
                ),
              ],
            ),
          ),
          
          // ========== POST TEXT ==========
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Text(
              postText,
              style: const TextStyle(fontSize: 15),
            ),
          ),
          
          // ========== LIKES COUNT ==========
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                Icon(Icons.thumb_up, size: 16, color: Colors.blue[700]),
                const SizedBox(width: 5),
                Text(
                  '$likes',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
          
          // ========== DIVIDER LINE ==========
          const Divider(height: 1, thickness: 0.5),
          
          // ========== ACTION BUTTONS: Like, Comment, Share ==========
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Like button
              TextButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('You liked this post!')),
                  );
                },
                icon: Icon(Icons.thumb_up_outlined, color: Colors.grey[700]),
                label: Text('Like', style: TextStyle(color: Colors.grey[700])),
              ),
              // Comment button
              TextButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Comment clicked!')),
                  );
                },
                icon: Icon(Icons.comment_outlined, color: Colors.grey[700]),
                label: Text('Comment', style: TextStyle(color: Colors.grey[700])),
              ),
              // Share button
              TextButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Share clicked!')),
                  );
                },
                icon: Icon(Icons.share_outlined, color: Colors.grey[700]),
                label: Text('Share', style: TextStyle(color: Colors.grey[700])),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

