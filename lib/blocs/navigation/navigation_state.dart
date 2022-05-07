part of 'navigation_bloc.dart';

@immutable
abstract class NavigationState extends Equatable {
  final List<Map> pagesList;
  final int indexRout;

  const NavigationState({required this.pagesList, required this.indexRout});
  @override
  List<Object?> get props => [pagesList, indexRout];
}

class NavigationInitial extends NavigationState {
  const NavigationInitial({required List<Map> pagesList, required int indexRout})
      : super(pagesList: pagesList, indexRout: indexRout);
}

class NavigationIndeteficationState extends NavigationState {
  const NavigationIndeteficationState({required List<Map> pagesList, required int indexRout})
      : super(pagesList: pagesList, indexRout: indexRout);
}
