import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example(
      {Key? key, required this.up, required this.down, required this.logo})
      : super(key: key);
  final String up;
  final String down;
  final Image logo;
  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        widget.logo,
        const SizedBox(
          height: 20,
        ),
        Text(
          widget.up,
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35.0, right: 30),
          child: Text(widget.down,
              style: const TextStyle(color: Colors.white, fontSize: 10),
              textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
