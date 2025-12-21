import 'package:flutter/material.dart';

class CustomColumView extends StatelessWidget {
  const CustomColumView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(height: 100, width: 100, color: Colors.red),
          Container(height: 100, width: 100, color: Colors.blue),
          Container(height: 100, width: 100, color: Colors.green),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsetsGeometry.zero,
              margin: EdgeInsets.zero,
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                    currentAccountPicture: Image.asset('assets/images/car.jpg'),
                    accountName: Text("Codewithowais"),
                    accountEmail: Text("Codewithowais@gmail.com"),
                  ),
                ],
              ),
            ),
            ListTile(title: const Text('Home'), onTap: () {}),
            ListTile(title: const Text('Status'), onTap: () {}),
            ListTile(title: const Text('Calls'), onTap: () {}),
            ListTile(title: const Text('Contact'), onTap: () {}),
          ],
        ),
      ),
    );
  }
}
