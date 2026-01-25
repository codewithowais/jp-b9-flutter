import 'package:flutter/material.dart';

// This widget creates a Facebook-style post card
class FbPostCard extends StatelessWidget {
  // These are the data we need to display in the post
  final String name; // Person's name
  final String timeAgo; // When was this posted (e.g., "2 hours ago")
  final String text; // The post text content
  final String? imageUrl; // Optional image URL (can be null)

  // Engagement numbers
  final int likes;
  final int comments;
  final int shares;

  // Constructor - this is how we create a new FbPostCard
  const FbPostCard({
    super.key,
    required this.name,
    required this.timeAgo,
    required this.text,
    this.imageUrl,
    this.likes = 0,
    this.comments = 0,
    this.shares = 0,
  });

  @override
  Widget build(BuildContext context) {
    // Get the app's theme (colors, text styles, etc.)
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    // Main container - the white card with shadow
    return Container(
      // Space around the card
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      // Decoration: background color, rounded corners, shadow
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(12), // Rounded corners
        boxShadow: [
          BoxShadow(
            blurRadius: 14,
            offset: const Offset(0, 8),
            color: Colors.black.withOpacity(isDark ? 0.18 : 0.08),
          ),
        ],
      ),
      // Everything inside the card is arranged vertically
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ========== HEADER SECTION ==========
          // Profile picture, name, time, and menu button
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 6, 8),
            child: Row(
              children: [
                // Profile picture (avatar)
                const CircleAvatar(radius: 20, child: Icon(Icons.person)),
                const SizedBox(width: 10), // Space between avatar and name
                // Name and time row
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Person's name
                      Text(
                        name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          height: 1.1,
                        ),
                      ),
                      const SizedBox(height: 2),
                      // Time and public icon
                      Row(
                        children: [
                          Text(
                            timeAgo,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: Colors.grey.shade600,
                              height: 1.1,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Icon(
                            Icons.public,
                            size: 14,
                            color: Colors.grey.shade600,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Three dots menu button
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                  splashRadius: 20,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints.tightFor(
                    width: 40,
                    height: 40,
                  ),
                ),
              ],
            ),
          ),

          // ========== POST TEXT SECTION ==========
          // Only show if there's text
          if (text.trim().isNotEmpty)
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 10),
              child: Text(
                text,
                style: theme.textTheme.bodyMedium?.copyWith(height: 1.35),
              ),
            ),

          // ========== POST IMAGE SECTION ==========
          // Only show if there's an image URL
          if (imageUrl != null)
            AspectRatio(
              aspectRatio: 16 / 9, // Width to height ratio
              child: Image.network(
                imageUrl!,
                fit: BoxFit.cover, // Fill the space
                // Show loading spinner while image loads
                loadingBuilder: (context, child, progress) {
                  if (progress == null) return child;
                  return Container(
                    color: Colors.grey.shade200,
                    child: const Center(child: CircularProgressIndicator()),
                  );
                },
                // Show error icon if image fails to load
                errorBuilder: (context, error, stack) => Container(
                  color: Colors.grey.shade200,
                  child: const Center(child: Icon(Icons.broken_image_outlined)),
                ),
              ),
            ),

          // ========== STATS SECTION ==========
          // Likes, comments, and shares count
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
            child: Row(
              children: [
                // Blue like icon
                Container(
                  width: 18,
                  height: 18,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: const Icon(
                    Icons.thumb_up,
                    size: 11,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 6),
                // Number of likes
                Text(
                  formatNumber(likes),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: Colors.grey.shade700,
                    height: 1.1,
                  ),
                ),
                const Spacer(), // Push next items to the right
                // Comments and shares count
                Text(
                  "${formatNumber(comments)} comments  •  ${formatNumber(shares)} shares",
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: Colors.grey.shade700,
                    height: 1.1,
                  ),
                ),
              ],
            ),
          ),

          // ========== DIVIDER LINE ==========
          Divider(height: 1, thickness: 0.7),

          // ========== ACTION BUTTONS SECTION ==========
          // Like, Comment, Share buttons
          SizedBox(
            height: 44,
            child: Row(
              children: [
                // Like button
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.thumb_up_alt_outlined,
                            size: 18,
                            color: Colors.grey.shade700,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "Like",
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.w600,
                              height: 1.1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Comment button
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.mode_comment_outlined,
                            size: 18,
                            color: Colors.grey.shade700,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "Comment",
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.w600,
                              height: 1.1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Share button
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.reply_outlined,
                            size: 18,
                            color: Colors.grey.shade700,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "Share",
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.w600,
                              height: 1.1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper function to convert number to string
  static String formatNumber(int number) {
    return "$number";
  }
}
