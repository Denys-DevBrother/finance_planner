import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Flexible(
              flex: 3,
              child: Text('Професія',
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                  textAlign: TextAlign.left)),
          const SizedBox(
            height: 5,
          ),
          const Flexible(
            flex: 1,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                fillColor: Color.fromRGBO(56, 56, 56, 1),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: const [
              Flexible(
                  flex: 2,
                  child: Text('Щомісячний грошовий потік',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                      textAlign: TextAlign.left)),
              SizedBox(
                width: 50,
              ),
              Flexible(
                  flex: 2,
                  child: Text('Річний грошовий потік',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                      textAlign: TextAlign.left)),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: const [
              Flexible(
                flex: 2,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    fillColor: Color.fromRGBO(56, 56, 56, 1),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Flexible(
                flex: 2,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    fillColor: Color.fromRGBO(56, 56, 56, 1),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: const [
              Flexible(
                  flex: 2,
                  child: Text('Активний дохід',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                      textAlign: TextAlign.left)),
              SizedBox(
                width: 113,
              ),
              Flexible(
                  flex: 2,
                  child: Text('Пасивний дохід',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                      textAlign: TextAlign.left)),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: const [
              Flexible(
                flex: 2,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    fillColor: Color.fromRGBO(56, 56, 56, 1),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Flexible(
                flex: 2,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    fillColor: Color.fromRGBO(56, 56, 56, 1),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const Flexible(
              flex: 2,
              child: Text('Накопичення (подушка безпеки)',
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                  textAlign: TextAlign.left)),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const Flexible(
                flex: 2,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    fillColor: Color.fromRGBO(56, 56, 56, 1),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Flexible(
                flex: 2,
                child: SizedBox(
                  height: 55,
                  child: TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: const BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.settings),
                        SizedBox(width: 5),
                        Text(
                          'Фінансові\n інструменти і терміни',
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        )
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
