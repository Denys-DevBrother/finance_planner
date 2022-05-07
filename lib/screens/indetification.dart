import 'package:flutter/material.dart';

class Indetefication extends StatefulWidget {
  const Indetefication({Key? key}) : super(key: key);

  @override
  State<Indetefication> createState() => _IndeteficationState();
}

class _IndeteficationState extends State<Indetefication> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      color: Colors.red,
    );
  }
}
