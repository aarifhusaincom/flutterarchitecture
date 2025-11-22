import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  final int value;

  const CounterDisplay({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$value',
      style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
    );
  }
}
