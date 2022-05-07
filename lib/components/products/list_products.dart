import 'package:finacial_planner/components/products/product.dart';
import 'package:flutter/material.dart';

class ListProducts extends StatefulWidget {
  const ListProducts({Key? key}) : super(key: key);

  @override
  State<ListProducts> createState() => _ListProductsState();
}

class _ListProductsState extends State<ListProducts> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Product(
          tem: 'Страхування',
          mean: [
            'Може захистити від деяких неприємностей.',
          ],
        ),
        Product(
          tem: 'Поліс на житло',
          mean: [
            'Сплачуєш внески (премії) до страхових організацій і дістаєш відшкодування втрат, що виникають внаслідок непередбачуваних випадків, наприклад, стихійного лиха.',
          ],
        ),
        Product(
          tem: 'Страхування життя',
          mean: [
            'Можуть бути передбачені ризики, такі як: тілесні ушкодження (травми), інвалідність,смерть в результаті нещасного випадку, та інші.',
          ],
        ),
        Product(
          tem: 'Автострахування',
          mean: [
            'Може бути добровільне або обов’язкове.Це вид страхування для легкових автомобілів, вантажівок та інших транспортних засобів, пов’язаний з витратами на відновлення транспортного засобу після аварії поломки чи купівлю нового авто після угону.',
          ],
        ),
        Product(
          tem: 'Вид невиїзда',
          mean: [
            'Страхування фінансових ризиків мандрівника,пов’язаних з відмовою від поїздки, а сам поліс покриває витрачені на покупку туру кошти.\n',
            'Також існує страхування вантажів,',
            ' від псування та інших ризиків.'
          ],
        ),
      ],
    );
  }
}
