import 'package:flutter/material.dart';

class Belief extends StatefulWidget {
  const Belief({Key? key, required this.attitude, required this.episode}) : super(key: key);
  final String attitude;
  final List<String> episode;

  @override
  State<Belief> createState() => _BeliefState();
}

class _BeliefState extends State<Belief> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      margin: const EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 16,
        right: 16,
      ),
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 27.0),
              child: Text(
                widget.attitude,
                style: const TextStyle(color: Colors.white, fontSize: 27),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ...widget.episode.map((e) {
              return Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 27.0),
                    child: Container(
                      margin: const EdgeInsets.only(top: 12),
                      width: 4,
                      height: 4,
                      decoration: const BoxDecoration(color: Colors.yellow, shape: BoxShape.circle),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14, right: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width * .7,
                      margin: const EdgeInsets.only(top: 12),
                      child: Text(
                        e,
                        style: const TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
