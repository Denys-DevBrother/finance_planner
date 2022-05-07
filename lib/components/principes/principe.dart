import 'package:flutter/material.dart';

class Principe extends StatefulWidget {
  const Principe({Key? key, required this.num, required this.box})
      : super(key: key);
  final String num;
  final List<String> box;

  @override
  State<Principe> createState() => _PrincipeState();
}

class _PrincipeState extends State<Principe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, bottom: 0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Color.fromRGBO(56, 56, 57, 1),
      ),
      margin: const EdgeInsets.only(top: 10, bottom: 10, left: 16, right: 10),
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...widget.box.map((e) {
            return Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Text(widget.num,
                      style:
                          const TextStyle(color: Colors.yellow, fontSize: 36)),
                ),
                SizedBox(
                  width: 340,
                  height: 120,
                  child: Text(
                    e,
                    style: const TextStyle(color: Colors.white, fontSize: 28),
                  ),
                ),
              ],
            );
          }).toList(),
        ],
      ),
    );
  }
}
