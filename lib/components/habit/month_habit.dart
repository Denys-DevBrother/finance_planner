import 'package:flutter/material.dart';

import 'habit_item.dart';

class MonthHabit extends StatefulWidget {
  const MonthHabit({Key? key}) : super(key: key);

  @override
  State<MonthHabit> createState() => _MonthHabitState();
}

class _MonthHabitState extends State<MonthHabit> {
  void select(int idElement) {
    mounthList[idElement - 1]['select'] = !mounthList[idElement - 1]['select'];
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  final List mounthList = [
    {'id': 1, 'title': 'cічень', 'select': false},
    {'id': 2, 'title': 'лютий', 'select': false},
    {'id': 3, 'title': 'березень', 'select': false},
    {'id': 4, 'title': 'квітень', 'select': false},
    {'id': 5, 'title': 'травень', 'select': false},
    {'id': 6, 'title': 'червень', 'select': false},
    {'id': 7, 'title': 'липень', 'select': false},
    {'id': 8, 'title': 'серпень', 'select': false},
    {'id': 9, 'title': 'вересень', 'select': false},
    {'id': 10, 'title': 'жовтень', 'select': false},
    {'id': 11, 'title': 'листопад', 'select': false},
    {'id': 12, 'title': 'грудень', 'select': false},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Постав плюсик, якщо відкладали хоча би 10%',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Flexible(
                flex: 4,
                child: Column(
                  children: [
                    ...mounthList
                        .where((element) => element['id'] < 7)
                        .map((element) => HabitItem(
                              callback: (e) => select(e),
                              title: element['title'],
                              id: element['id'],
                              selected: element['select'],
                            ))
                        .toList()
                  ],
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Flexible(
                flex: 4,
                child: Column(
                  children: [
                    ...mounthList
                        .where((element) => element['id'] > 6)
                        .map((element) => HabitItem(
                              callback: (e) => select(e),
                              title: element['title'],
                              id: element['id'],
                              selected: element['select'],
                            ))
                        .toList(),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
