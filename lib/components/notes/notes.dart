import 'package:flutter/material.dart';

class Note extends StatelessWidget {
  const Note({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 120.0, bottom: 70, right: 15, left: 15),
      child: Container(
        decoration: const BoxDecoration(color: Color.fromRGBO(56, 56, 56, 1)),
      ),
    );
  }
}
