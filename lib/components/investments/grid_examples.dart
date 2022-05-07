import 'package:finacial_planner/components/investments/example.dart';
import 'package:flutter/material.dart';

class GridExamples extends StatefulWidget {
  const GridExamples({Key? key}) : super(key: key);

  @override
  State<GridExamples> createState() => _GridExamplesState();
}

class _GridExamplesState extends State<GridExamples> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2, children: const [
      Example(
        logo: Image(image: AssetImage('assets/img/Group6.png')),
        up: 'Вкласти в себе',
        down: '(в знання, фізичу форму тощо)',
      ),
      Example(
        logo: Image(image: AssetImage('assets/img/Group7.png')),
        up: 'Купити актив',
        down: 'який приносить дохід, або може вирости в ціні.',
      ),
      Example(
        up: 'Дати в борг',
        down: 'банку, компанії',
        logo: Image(image: AssetImage('assets/img/Group1.png')),
      ),
      Example(
        up: 'Вкласти в бізнес',
        down: '',
        logo: Image(image: AssetImage('assets/img/Group9.png')),
      ),
      Example(
        up: 'Цінні папери',
        down: '(Фондовий ринок)',
        logo: Image(image: AssetImage('assets/img/Group2.png')),
      ),
      Example(
        up: 'Цифрові активи',
        down: '(криптовалюта) блокчейн',
        logo: Image(image: AssetImage('assets/img/Group8.png')),
      ),
      Example(
        up: 'Нерухомість',
        down: ' для здачі в оренду (квартира, земля тощо)',
        logo: Image(image: AssetImage('assets/img/Group4.png')),
      ),
      Example(
        up: 'Цінні метали',
        down: '(золото,срібло, ...)',
        logo: Image(image: AssetImage('assets/img/Group3.png')),
      ),
      Example(
        up: 'Акції',
        down: '',
        logo: Image(image: AssetImage('assets/img/Group.png')),
      ),
    ]);
  }
}
