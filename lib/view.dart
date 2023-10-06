import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({super.key});

  final List<String> buttonText = ["S", "M", "L", "XL", "XXL", "XXXL"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 6,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: 100,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black12,
            ),
            onPressed: () {},
            child: Text(buttonText[index]),
          ),
        );
      },
    );
  }
}
