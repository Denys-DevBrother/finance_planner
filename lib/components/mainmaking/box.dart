import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box({Key? key, required}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .8,
      child: const TextField(
        decoration: InputDecoration(
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
          fillColor: Color.fromRGBO(56, 56, 56, 1),
        ),
      ),
    );
  }
}
