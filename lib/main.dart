import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Live Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 30,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.person),
                color: Colors.white,
                onPressed: () {},
                iconSize: 25.0,
              ),
            ),
            const Text(
              'Jhon Doe',
              style: TextStyle(fontSize: 25),
            ),
            const Text("Flutter Batch 4"),
          ],
        ),
      ),
    );
  }
}
