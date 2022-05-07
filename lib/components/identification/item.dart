import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  const Item(
      {Key? key, required this.title, required this.body, required this.bottom})
      : super(key: key);
  final String title;
  final List<String> body;
  final String bottom;
  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Color.fromRGBO(56, 56, 57, 1),
      ),
      margin: const EdgeInsets.only(top: 10, bottom: 10, left: 16, right: 16),
      height: 200,
      width: 343,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: Stack(
          //alignment: Alignment.bottomCenter,
          children: [
            const Positioned(
              child: Image(image: AssetImage('assets/img/image 1.png')),
              right: 10,
              bottom: 10,
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Container(
                //margin: const EdgeInsets.only(bottom: 25),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 2,
                      color: Color.fromRGBO(
                        112,
                        112,
                        112,
                        1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    widget.bottom,
                    style: const TextStyle(
                      color: Color.fromRGBO(112, 112, 112, 1),
                      fontSize: 7,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(color: Colors.white, fontSize: 28),
                  ),
                  ...widget.body.map((e) {
                    return Row(
                      children: [
                        Container(
                          //margin: const EdgeInsets.all(10),
                          width: 5,
                          height: 5,
                          decoration: const BoxDecoration(
                              color: Colors.yellow, shape: BoxShape.circle),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 185,
                          child: Text(
                            e,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
