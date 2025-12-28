import 'package:facebook/views/dashboard_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  login(context) {
    print(emailController.text);
    print(passController.text);
    // admin@gmail.com
    // 123456
    if (emailController.text == 'admin@gmail.com' &&
        passController.text == '123456') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute<void>(builder: (context) => const DashboardView()),
      );
    } else {
      emailController.clear();
      passController.clear();
      const snackBar = SnackBar(
        content: Text('Yay! A SnackBar!'),
        duration: Duration(seconds: 3), // Optional: set the duration
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: emailController,
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: passController,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
          SizedBox(height: 10),

          ElevatedButton(
            onPressed: () {
              login(context);
            },
            child: Text("Login"),
          ),
          SizedBox(height: 10),
          Text("Dont have an account."),
          TextButton(onPressed: () {}, child: Text("Register here.")),
        ],
      ),
    );
  }
}
