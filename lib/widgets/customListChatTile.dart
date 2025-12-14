import 'package:flutter/material.dart';

Widget customListChatTile({required String title, required String subtitle}) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: NetworkImage(
        'https://cdn.pixabay.com/photo/2017/06/01/08/28/bmw-2362815_1280.jpg',
      ),
    ),
    title: Text(title),
    subtitle: Text(subtitle),
    tileColor: const Color.fromARGB(255, 231, 239, 244),
    trailing: Row(
      mainAxisSize: MainAxisSize.min,
      children: [Text("12:39 AM"), Icon(Icons.check)],
    ),
  );
}
