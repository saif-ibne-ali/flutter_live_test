import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Selectable List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SelectableListScreen(),
    );
  }
}

class SelectableListScreen extends StatefulWidget {
  const SelectableListScreen({super.key});

  @override
  SelectableListScreenState createState() => SelectableListScreenState();
}

class SelectableListScreenState extends State<SelectableListScreen> {
  List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"];
  List<bool> selected = [false, false, false, false, false];

  int selectedCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selection Screen'),
        backgroundColor: Colors.blue,
        elevation: 30,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(items[index]),
            selected: selected[index],
            selectedTileColor: Colors.blue,
            onTap: () {
              setState(() {
                selected[index] = !selected[index];
                if (selected[index]) {
                  selectedCount++;
                } else {
                  selectedCount--;
                }
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Selected Items'),
                content: Text('Number of selected items: $selectedCount'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Close'),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}
