import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({Key? key, required this.tem, required this.mean})
      : super(key: key);
  final String tem;
  final List<String> mean;

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 5),
      margin: const EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 16,
        right: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.tem,
            style: const TextStyle(color: Colors.white, fontSize: 34),
          ),
          ...widget.mean.map((e) {
            return Padding(
              padding: const EdgeInsets.only(right: 46),
              child: Text(
                e,
                //maxLines: 5,
                style: const TextStyle(color: Colors.white, fontSize: 14),
                //overflow: TextOverflow.ellipsis,
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
