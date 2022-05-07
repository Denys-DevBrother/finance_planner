import 'package:finacial_planner/components/identification/item.dart';
import 'package:flutter/material.dart';

class ListItems extends StatefulWidget {
  const ListItems({Key? key}) : super(key: key);

  @override
  State<ListItems> createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Item(
          title: 'Робітник за наймом:',
          body: [
            'Міняють час на зарплату.',
            'Ризик звільнення.',
            'Залежність від роботодавця.',
            '"Стабільність".'
          ],
          bottom: 'Активний дохід (в середньому це 90% людей і не більше 10 відсотків грошей):',
        ),
        Item(
          title: 'Самозайнятий підприємець:',
          body: [
            'Робота на себе.',
            'Час на "розкрутку".',
            'Ризики банкрутства.',
            'Більше свободи.',
          ],
          bottom: 'Активний дохід (в середньому це 90% людей і не більше 10 відсотків грошей):',
        ),
        Item(
          title: 'Бізнесмен:',
          body: [
            'Люди працюють на тебе в бізнес системі.',
            'Делегування.',
            'Великий дохід.',
          ],
          bottom: 'Активний дохід (в середньому це 90% людей і не більше 10 відсотків грошей):',
        ),
        Item(
          title: 'Інвестор:',
          body: [
            'Гроші працюють на тебе.',
            'Великі доходи.',
            'Максимальні фінансові можливості і свобода.',
          ],
          bottom: 'Пасивний дохід (в середньому це 10% людей 90 відсотків грошей):',
        )
      ],
    );
  }
}
