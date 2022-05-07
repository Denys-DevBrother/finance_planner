import 'package:flutter/material.dart';

class Aim1 extends StatefulWidget {
  const Aim1({Key? key, required this.title1, required this.body1})
      : super(key: key);
  final String title1;
  final List<String> body1;

  @override
  State<Aim1> createState() => _Aim1State();
}

class _Aim1State extends State<Aim1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 27.0),
          child: Text(
            widget.title1,
            style: const TextStyle(color: Colors.white, fontSize: 36),
          ),
        ),
        ...widget.body1.map((e) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 27.0),
                child: Container(
                  margin: const EdgeInsets.only(top: 12),
                  width: 4,
                  height: 4,
                  decoration: const BoxDecoration(
                      color: Colors.yellow, shape: BoxShape.circle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width * .7,
                  margin: const EdgeInsets.only(top: 12),
                  child: Text(
                    e,
                    //maxLines: 5,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                    //overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ],
    );
  }
}
