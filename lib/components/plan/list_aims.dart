import 'package:finacial_planner/components/plan/aim.dart';
import 'package:finacial_planner/components/plan/aim1.dart';
import 'package:flutter/material.dart';

class ListAims extends StatefulWidget {
  const ListAims({Key? key}) : super(key: key);

  @override
  State<ListAims> createState() => _ListAimsState();
}

class _ListAimsState extends State<ListAims> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Aim(
          tem: 'Приклад.',
          title: 'Ваш дохід залежить від багатьох факторів:',
          body: [
            'Професія (набір навиків, досвіду, вмінь), ',
            'Економічна ситуація в країні та світі, ',
            'Попит і пропозиція на ваші товари та послуги;',
          ],
        ),
        Aim(
          tem: 'Ціль 1.',
          title: 'Позбутися усіх боргів.',
          body: [],
        ),
        Aim(
          tem: 'Ціль 2.',
          title:
              'Пасивний дохід перевищує суму щомісячних витрат. Є час займатися улюбленими справами',
          body: [],
        ),
        Aim(
          tem: 'Ціль 3.',
          title:
              'Фінансова незалежність – становище коли є достатньо статків, щоб не залежати від заробітної плати, одержаної від продажу власної робочої сили. Здійснення найзаповітніших мрій.\n'
              'Також подумайте про пенсію (скільки грошей в місяць вам знадобиться в старості та на який термін). Починайте вікладати накопичення, якщо ще не робите це.',
          body: [],
        ),
        Aim1(
          title1: 'Інвестую:',
          body1: [
            '50% в низькоризикові проекти',
            '30% в середньо ризикові проекти',
            '20% в високоризикові проекти',
          ],
        ),
        Aim(
          tem: '',
          title: 'Пам"ятайте, що тільки ви відповідальні за особисті фінанси.',
          body: [],
        ),
      ],
    );
  }
}
