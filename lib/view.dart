import 'package:flutter/material.dart';

class ProtraitView extends StatelessWidget {
  const ProtraitView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, int index) {
        return Container(
          padding: const EdgeInsets.all(5),
          color: Colors.green,
        );
      },
    );
  }
}

class LandscapeView extends StatelessWidget {
  const LandscapeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2));
  }
}
