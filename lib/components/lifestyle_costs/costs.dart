import 'package:finacial_planner/components/lifestyle_costs/cost_field.dart';
import 'package:flutter/material.dart';

class Costs extends StatefulWidget {
  const Costs({Key? key}) : super(key: key);

  @override
  State<Costs> createState() => _CostsState();
}

class _CostsState extends State<Costs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            CostField(
              title: 'Харчування',
              logo: Image(image: AssetImage('assets/img/Group13.png')),
            ),
            CostField(
              title: 'Рахунки',
              logo: Image(image: AssetImage('assets/img/Group22.png')),
            ),
            CostField(
              title: 'Транспорт',
              logo: Image(image: AssetImage('assets/img/Vector28.png')),
            ),
            CostField(
              title: 'Розваги',
              logo: Image(image: AssetImage('assets/img/Group14.png')),
            ),
            CostField(
              title: 'Зв’язок',
              logo: Image(image: AssetImage('assets/img/Page23.png')),
            ),
            CostField(
              title: 'Житло',
              logo: Image(image: AssetImage('assets/img/Vector25.png')),
            ),
            CostField(
              title: 'Гігієна',
              logo: Image(image: AssetImage('assets/img/Group18.png')),
            ),
            CostField(
              title: 'Здоров’я',
              logo: Image(image: AssetImage('assets/img/XMLID30.png')),
            ),
            CostField(
              title: 'Автомобіль',
              logo: Image(image: AssetImage('assets/img/Vector26.png')),
            ),
            CostField(
              title: 'Одяг',
              logo: Image(image: AssetImage('assets/img/Group17.png')),
            ),
            CostField(
              title: 'Таксі та інший транспорт',
              logo: Image(image: AssetImage('assets/img/Group19.png')),
            ),
            CostField(
              title: 'Подарунки',
              logo: Image(image: AssetImage('assets/img/Group16.png')),
            ),
            CostField(
              title: 'Улюбленці',
              logo: Image(image: AssetImage('assets/img/XMLID29.png')),
            ),
            CostField(
              title: 'Спорт',
              logo: Image(image: AssetImage('assets/img/Group15.png')),
            ),
            CostField(
              title: 'Непередбачувані витрати',
              logo: Image(image: AssetImage('assets/img/Vector24.png')),
            ),
            CostField(
              title: 'Витрати на дітей',
              logo: Image(image: AssetImage('assets/img/Vector27.png')),
            ),
            CostField(
              title: 'Податки та збори',
              logo: Image(image: AssetImage('assets/img/Group20.png')),
            ),
            CostField(
              title: 'Платежі по кредитам',
              logo: Image(image: AssetImage('assets/img/Group21.png')),
            ),
            CostField(
              title: 'Інші витрати',
              logo: Image(image: AssetImage('assets/img/XMLID31.png')),
            ),
          ],
        ));
  }
}
