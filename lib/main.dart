import 'package:flutter/material.dart';
import 'package:flutter_live_test/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        title: const Text("News Feed"),
      ),
      body: Container(
        color: Colors.white10,
        child: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return const Padding(
                padding: EdgeInsets.all(8.0),
                child: ProtraitView(),
              );
            } else {
              return const Padding(
                padding: EdgeInsets.all(5.0),
                child: LandscapeView(),
              );
            }
          },
        ),
      ),
    );
  }
}
