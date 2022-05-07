import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

NavigationBloc navigationBloc = NavigationBloc();

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationInitial(pagesList: [], indexRout: 0)) {
    on<NavigationInitialEvent>(_indetefication);
    on<NavigationSelectedEvent>(_selectIndex);
  }

  List<Map> pagesList = [
    {'title': 'Ідентифікуй себе', 'selected': true},
    {'title': 'Переконання щодо грошей', 'selected': false},
    {'title': '3 ключових принципа фінансів:', 'selected': false},
    {'title': 'Приклад інвестицій', 'selected': false},
    {'title': 'Подушка безпеки', 'selected': false},
    {'title': 'Сила оточення', 'selected': false},
    {'title': 'Скільки коштує мій річний lifestyle', 'selected': false},
    {'title': 'Фінансовий план', 'selected': false},
    {'title': 'Манімейкінгові дії', 'selected': false},
    {'title': 'Особистий фінансовий звіт', 'selected': false},
    {'title': 'Моя ціль ', 'selected': false},
    {'title': 'Звичка накопичувати', 'selected': false},
    {'title': 'Фінансові інструменти і терміни', 'selected': false},
    {'title': 'Страхові продукти', 'selected': false},
    {'title': 'Нотатки', 'selected': false},
    {'title': 'Контакти', 'selected': false},
  ];

  int indexRout = 0;

  FutureOr<void> _indetefication(
      NavigationInitialEvent event, Emitter<NavigationState> emit) async {
    emit(NavigationIndeteficationState(pagesList: pagesList, indexRout: indexRout));
  }

  FutureOr<void> _selectIndex(NavigationSelectedEvent event, Emitter<NavigationState> emit) async {
    indexRout = event.index;

    for (var i = 0; i < pagesList.length; i++) {
      if (i == event.index) {
        pagesList[i]['selected'] = true;
      } else {
        pagesList[i]['selected'] = false;
      }
    }
    emit(NavigationIndeteficationState(pagesList: pagesList, indexRout: indexRout));
  }
}
