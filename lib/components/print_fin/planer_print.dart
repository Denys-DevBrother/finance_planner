import 'package:flutter/material.dart';

class PlanerPrint extends StatelessWidget {
  const PlanerPrint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Надрукований Фінансовий\nПланер можна придбати на сайті',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.yellow,
                  width: 0 / 5,
                ),
              ),
            ),
            child: const Text(
              'www.planner-notebook.com',
              style: TextStyle(color: Colors.yellow, fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(image: AssetImage('assets/img/Group11.png')),
              SizedBox(
                width: 80,
              ),
              Image(image: AssetImage('assets/img/Group12.png')),
            ],
          ),
        ],
      ),
    );
  }
}
