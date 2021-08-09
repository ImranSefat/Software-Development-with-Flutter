import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Welcome to the Second Screen"),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go Back"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
