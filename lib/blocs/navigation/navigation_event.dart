part of 'navigation_bloc.dart';

@immutable
abstract class NavigationEvent extends Equatable {}

class NavigationInitialEvent extends NavigationEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class NavigationSelectedEvent extends NavigationEvent {
  final int index;

  NavigationSelectedEvent({required this.index});
  @override
  List<Object?> get props => [index];
}
