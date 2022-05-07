import 'package:finacial_planner/components/aim/my_aim.dart';
import 'package:finacial_planner/components/beliefs/list_beliefs.dart';
import 'package:finacial_planner/components/environment/stenth.dart';
import 'package:finacial_planner/components/fin_report/report.dart';
import 'package:finacial_planner/components/habit/month_habit.dart';
import 'package:finacial_planner/components/identification/list_items.dart';
import 'package:finacial_planner/components/instruments/list_instryment.dart';
import 'package:finacial_planner/components/investments/grid_examples.dart';
import 'package:finacial_planner/components/lifestyle_costs/costs.dart';
import 'package:finacial_planner/components/mainmaking/mainmaking_task.dart';
import 'package:finacial_planner/components/notes/notes.dart';
import 'package:finacial_planner/components/plan/list_aims.dart';
import 'package:finacial_planner/components/principes/list_principes.dart';
import 'package:finacial_planner/components/print_fin/planer_print.dart';
import 'package:finacial_planner/components/products/list_products.dart';
import 'package:finacial_planner/components/safe/safe_box.dart';

class Rout {
  List routList = [
// Ідентифікуй себе
    const ListItems(),
// Переконання щодо грошей
    const ListBeliefs(),
// 3 ключових принципа фінансів
    const ListPrincipes(),
// Приклад інвестицій
    const GridExamples(),
// Подушка безпеки
    const SafeBox(),
// Сила оточення
    const Strenth(),
// Скільки коштує мій річний lifestyle
    const Costs(),
// Фінансовий план
    const ListAims(),
// Манімейкінгові дії
    const MainmakingTask(),
// Особистий фінансовий звіт
    const Report(),
// Моя ціль
    const MyAim(),
// Звичка накопичувати
    const MonthHabit(),
// Фінансові інструменти і терміни
    const ListInstuments(),
// Страхові продукти
    const ListProducts(),
// Нотатки
    const Note(),
// контакт
    const PlanerPrint()
  ];
}
