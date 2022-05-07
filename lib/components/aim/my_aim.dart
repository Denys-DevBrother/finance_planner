import 'package:flutter/material.dart';

class MyAim extends StatefulWidget {
  const MyAim({Key? key}) : super(key: key);

  @override
  State<MyAim> createState() => _MyAimState();
}

class _MyAimState extends State<MyAim> {
  String dropdownvalue = 'грн.';

  // List of items in our dropdown menu
  var items = [
    'грн.',
    '\$',
    '€',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Image(image: AssetImage('assets/img/Group5.png')),
              SizedBox(
                width: 25,
              ),
              Text(
                  ' Виріши, скільки місяців ти готовий\n працювати заради бажаного і порахуй\n скільки грошей в місяць потрібно\n відкладати.',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  textAlign: TextAlign.left),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const Flexible(
              flex: 3,
              child: Text('Моя ціль:',
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
                  child: Text('Моє бажання коштує',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                      textAlign: TextAlign.left)),
              SizedBox(
                width: 85,
              ),
              Flexible(
                  flex: 3,
                  child: Text('Скільки місяців накопичувати',
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
                  child: Text('Скільки коштів буду відкладати',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                      textAlign: TextAlign.left)),
              SizedBox(
                width: 35,
              ),
              Flexible(
                  flex: 2,
                  child: Text('Дата коли буде досягнуто цілі',
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
                  child: Text('внесено',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                      textAlign: TextAlign.left)),
              SizedBox(
                width: 205,
              ),
              Flexible(
                  flex: 2,
                  child: Text('валюта',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                      textAlign: TextAlign.left)),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const Flexible(
                flex: 4,
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
                child: Container(
                  //height: ,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(56, 56, 56, 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        alignment: Alignment.center,
                        //underline: UnderlineInputBorder(borderSide: (color:Colors.false)),
                        isExpanded: true,
                        itemHeight: 55,
                        dropdownColor: const Color.fromRGBO(56, 56, 56, 1),
                        focusColor: const Color.fromRGBO(56, 56, 56, 1),
                        iconEnabledColor:
                            const Color.fromRGBO(162, 162, 162, 1),
                        iconDisabledColor:
                            const Color.fromRGBO(162, 162, 162, 1),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Center(child: Text(items)),
                          );
                        }).toList(),
                        onChanged: (String? newString) {
                          setState(() {
                            dropdownvalue = newString!;
                          });
                        }),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: const [
              Flexible(
                flex: 4,
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
              Flexible(flex: 2, child: SizedBox())
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Flexible(
                flex: 4,
                child: Text(
                  'Написніть + щоб внести данні  про суму',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                flex: 2,
                child: SizedBox(
                  width: 150,
                  height: 60,
                  child: FloatingActionButton(
                    shape: const BeveledRectangleBorder(
                        side: BorderSide(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    onPressed: () {},
                    backgroundColor: const Color.fromRGBO(31, 31, 31, 1),
                    child: const Icon(Icons.add),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
