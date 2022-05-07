import 'package:flutter/material.dart';

class SafeBox extends StatefulWidget {
  const SafeBox({Key? key}) : super(key: key);

  @override
  State<SafeBox> createState() => _SafeBoxState();
}

class _SafeBoxState extends State<SafeBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
                ' Накопичуй резерв грошей на\n випадок непередбачених обставин',
                style: TextStyle(color: Colors.white, fontSize: 14),
                textAlign: TextAlign.center),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  Text(' А.',
                      style: TextStyle(color: Colors.white, fontSize: 36),
                      textAlign: TextAlign.center),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Image(image: AssetImage('assets/img/Vector6.png')),
                  ),
                  Text(' В.',
                      style: TextStyle(color: Colors.white, fontSize: 36),
                      textAlign: TextAlign.center),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Image(image: AssetImage('assets/img/Vector6.png')),
                  ),
                  Text(' С.',
                      style: TextStyle(color: Colors.white, fontSize: 36),
                      textAlign: TextAlign.center),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Моя середня загальна сума витрат за місяць.',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                      //textAlign: TextAlign.left
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 228,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          fillColor: Color.fromRGBO(56, 56, 56, 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Вибери термін, за який можеш створити \nфінансовий резерв, наприклад, 3-6-12 місяців.',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                      //textAlign: TextAlign.left
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 228,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          fillColor: Color.fromRGBO(56, 56, 56, 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Сума резерва (AхB)',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                      //textAlign: TextAlign.left
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 228,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          fillColor: Color.fromRGBO(56, 56, 56, 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50.0),
                      child: Image(image: AssetImage('assets/img/Group10.png')),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
