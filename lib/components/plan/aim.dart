import 'package:flutter/material.dart';

class Aim extends StatefulWidget {
  const Aim(
      {Key? key, required this.tem, required this.title, required this.body})
      : super(key: key);
  final String tem;
  final String title;
  final List<String> body;

  @override
  State<Aim> createState() => _AimState();
}

class _AimState extends State<Aim> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      margin: const EdgeInsets.only(
        top: 10,
        bottom: 10,
        //left: 16,
        right: 16,
      ),
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 27.0),
              child: Text(
                widget.tem,
                style: const TextStyle(color: Colors.white, fontSize: 36),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 27.0),
              child: Text(
                widget.title,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
            ...widget.body.map((e) {
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
                        style:
                            const TextStyle(color: Colors.white, fontSize: 14),
                        //overflow: TextOverflow.ellipsis,
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
