import 'package:flutter/material.dart';

class BottomSheetTemplateView extends StatelessWidget {
  const BottomSheetTemplateView({super.key});

  showBottom(context) async {
   await showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 400,
          color: Colors.grey[200],
        );
      },
       
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('showModalBottomSheet'),
          onPressed: () async {
            await showBottom(context);
          },
        ),
      ),
    );
  }
}
