import 'package:flutter/material.dart';

class WalletHomeView extends StatelessWidget {
  const WalletHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 290,
                width: double.infinity,
                color: Colors.purple,
              ),
            ),

            Positioned(
              top: 260,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                // height: MediaQuery.of(context).size.height,
                // width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
              ),
            ),

            Positioned(
              top: 230,
              left: 16,
              right: 16,
              child: Container(color: Colors.red, height: 80),
            ),
          ],
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';

// class WalletHomeView extends StatelessWidget {
//   const WalletHomeView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             height: 100,
//             width: 100,
//             color: Colors.red,
//           ),
//           Container(
//             height: 90,
//             width: 90,
//             color: Colors.green,
//           ),
//           Container(
//             height: 80,
//             width: 80,
//             color: Colors.purple,
//           ),
//           ],
//       ),
//     );
//   }
// }