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
      debugShowCheckedModeBanner: false,
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
        title: const Text("My Shopping List"),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.shopping_cart_sharp,
              size: 25,
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ListTile(
                title: Text(
                  "Apples",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                leading: Icon(
                  Icons.apple,
                  size: 30,
                ),
              ),
              Divider(
                thickness: 2,
                height: 10,
              ),
              ListTile(
                title: Text(
                  "Watch",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                leading: Icon(
                  Icons.watch,
                  size: 30,
                ),
              ),
              Divider(
                thickness: 2,
                height: 10,
              ),
              ListTile(
                title: Text(
                  "Face Mask",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                leading: Icon(
                  Icons.masks,
                  size: 30,
                ),
              ),
              Divider(
                thickness: 2,
                height: 10,
              ),
              ListTile(
                title: Text(
                  "School Bag",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                leading: Icon(
                  Icons.shopping_bag_sharp,
                  size: 30,
                ),
              ),
              Divider(
                thickness: 2,
                height: 10,
              ),
              ListTile(
                title: Text(
                  "Books",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                leading: Icon(
                  Icons.book,
                  size: 30,
                ),
              ),
              Divider(
                thickness: 2,
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
