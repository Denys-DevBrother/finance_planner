import 'package:finacial_planner/components/lifestyle_costs/cost_field.dart';
import 'package:flutter/material.dart';

class Income extends StatefulWidget {
  const Income({Key? key}) : super(key: key);

  @override
  State<Income> createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            CostField(
              title: 'Зарплата',
              logo: Image(image: AssetImage('assets/img/₴.png')),
            ),
            CostField(
              title: 'Подарунок',
              logo: Image(image: AssetImage('assets/img/Group16.png')),
            ),
            CostField(
              title: 'Підробіток',
              logo: Image(image: AssetImage('assets/img/€.png')),
            ),
            CostField(
              title: 'Дивіденди',
              logo: Image(image: AssetImage('assets/img/\$.png')),
            ),
            CostField(
              title: 'Бонус',
              logo: Image(image: AssetImage('assets/img/Vector36.png')),
            ),
            CostField(
              title: 'Частка у певному бізнесі',
              logo: Image(image: AssetImage('assets/img/Group32.png')),
            ),
            CostField(
              title: 'Роялті',
              logo: Image(image: AssetImage('assets/img/Group34.png')),
            ),
            CostField(
              title: 'Проценти по депозиту',
              logo: Image(image: AssetImage('assets/img/%.png')),
            ),
            CostField(
              title: 'Дохід від бізнесу',
              logo: Image(image: AssetImage('assets/img/Group33.png')),
            ),
            CostField(
              title: 'Прибуток від оренди',
              logo: Image(image: AssetImage('assets/img/Group31.png')),
            ),
            CostField(
              title: 'Інші джерела доходів',
              logo: Image(image: AssetImage('assets/img/Group35.png')),
            ),
          ],
        ));
  }
}
