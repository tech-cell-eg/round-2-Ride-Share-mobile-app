import 'package:flutter/material.dart';

class ComplainScreen extends StatelessWidget {
  const ComplainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 600),
        child: SingleChildScrollView(
          child: Container(
            height: 100,
            width: 300,
            color: Colors.amber,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(),
                Text('hi'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
