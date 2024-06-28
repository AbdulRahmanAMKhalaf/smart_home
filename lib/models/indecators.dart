import 'package:flutter/material.dart';
import 'package:smart_home/models/home_model.dart';

class Indecators extends StatelessWidget {
  const Indecators({super.key, required this.value});

  final int value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        homeList.length,
            (index) {
          return AnimatedContainer(
            height: 15,
            width: 15,
            curve: Curves.easeInOut,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: value == index ? Colors.orange.shade200 : Colors.grey
            ), duration: const Duration(milliseconds:500),
          );
        },),
    );
  }
}
