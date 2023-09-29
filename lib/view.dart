import 'package:flutter/material.dart';

class ProtraitView extends StatelessWidget {
  const ProtraitView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, int index) {
        return SizedBox(
          height: 150,
          child: Card(
            margin: const EdgeInsets.all(10),
            child: Image.network("https://via.placeholder.com/150"),
          ),
        );
      },
    );
  }
}

class LandscapeView extends StatelessWidget {
  const LandscapeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: const EdgeInsets.all(10),
          child: Align(
              alignment: Alignment.topCenter,
              child: Image.network("https://via.placeholder.com/150")),
        );
      },
    );
  }
}
