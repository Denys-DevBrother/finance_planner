import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({Key? key, required this.num}) : super(key: key);
  final String num;
  @override
  Widget build(BuildContext context) {
    return Text(num,
        style: const TextStyle(color: Colors.white, fontSize: 36),
        textAlign: TextAlign.center);
  }
}
