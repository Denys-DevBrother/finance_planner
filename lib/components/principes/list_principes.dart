import 'package:finacial_planner/components/principes/principe.dart';
import 'package:flutter/material.dart';

class ListPrincipes extends StatefulWidget {
  const ListPrincipes({Key? key}) : super(key: key);

  @override
  State<ListPrincipes> createState() => _ListPrincipesState();
}

class _ListPrincipesState extends State<ListPrincipes> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 154),
      // shrinkWrap: true,
      children: const [
        Principe(
          box: [
            'Рахувати доходи та витрати - бачити свій баланс',
          ],
          num: '1.',
        ),
        Principe(
          box: [
            'Витрачати менше чим заробляєш та заробляти більше чим витрачаєш',
          ],
          num: '2.',
        ),
        Principe(
          box: [
            'Зберігай, інвестуй та диверсифікуй',
          ],
          num: '3.',
        ),
      ],
    );
  }
}
