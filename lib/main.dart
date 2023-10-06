import 'package:flutter/material.dart';
//import 'package:flutter_live_test/view.dart';

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
          textTheme:
              Theme.of(context).textTheme.apply(bodyColor: Colors.white)),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> buttonText = ["S", "M", "L", "XL", "XXL", "XXXL"];
  String selected = "S";

  selectedSize(String size) {
    setState(() {
      selected = size;
    });
  }

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Size Selector"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 2),
          itemCount: buttonText.length,
          itemBuilder: (BuildContext context, int index) {
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: selected == buttonText[index]
                      ? Colors.orange
                      : Colors.grey),
              onPressed: () {
                selectedSize(buttonText[index]);
                mySnackBar(buttonText[index], context);
              },
              child: Text(
                buttonText[index],
                style: Theme.of(context).textTheme.titleLarge,
              ),
            );
          },
        ),
      ),
    );
  }
}
