import 'package:finacial_planner/blocs/navigation/navigation_bloc.dart';
import 'package:finacial_planner/screens/indetification.dart';
import 'package:finacial_planner/utils/rout.dart';
import 'package:finacial_planner/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: navigationBloc,
      child: SafeArea(
          child: Scaffold(
        drawer: const DrawerApp(),
        backgroundColor: const Color.fromRGBO(31, 31, 31, 1),
        appBar: AppBar(),
        body: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
            return Rout().routList[state.indexRout];
          },
        ),
      )),
    );
  }
}
