import 'package:flutter/material.dart';

class Strenth extends StatefulWidget {
  const Strenth({Key? key}) : super(key: key);

  @override
  State<Strenth> createState() => _StrenthState();
}

class _StrenthState extends State<Strenth> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Вправа: Запиши 5 найблищих друзів з якими в тісних відносинах та їх дохід',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Flexible(
                  flex: 2,
                  child: Text(
                    'ім’я друга',
                    style: TextStyle(color: Colors.grey),
                  )),
              SizedBox(
                width: 175,
              ),
              Flexible(
                  flex: 2,
                  child: Text(
                    'його дохід',
                    style: TextStyle(color: Colors.grey),
                  )),
            ],
          ),
          Row(
            children: const [
              Flexible(
                flex: 2,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    fillColor: Color.fromRGBO(56, 56, 56, 1),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    fillColor: Color.fromRGBO(56, 56, 56, 1),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Flexible(
                flex: 2,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    fillColor: Color.fromRGBO(56, 56, 56, 1),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    fillColor: Color.fromRGBO(56, 56, 56, 1),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Flexible(
                flex: 2,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    fillColor: Color.fromRGBO(56, 56, 56, 1),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    fillColor: Color.fromRGBO(56, 56, 56, 1),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Flexible(
                flex: 2,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    fillColor: Color.fromRGBO(56, 56, 56, 1),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    fillColor: Color.fromRGBO(56, 56, 56, 1),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Flexible(
                flex: 2,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    fillColor: Color.fromRGBO(56, 56, 56, 1),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    fillColor: Color.fromRGBO(56, 56, 56, 1),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Flexible(
                flex: 1,
                child: Text(
                  'Твій дохід:\n',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ],
          ),
          const Flexible(
            flex: 1,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(),
                fillColor: Color.fromRGBO(56, 56, 56, 1),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Відчуваєш зв’язок?'
            'Ми те, що ми думаємо і в якому оточенні перебуваємо',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
