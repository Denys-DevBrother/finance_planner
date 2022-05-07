import 'package:finacial_planner/blocs/auth/auth_bloc.dart';
import 'package:finacial_planner/screens/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Home(),
    );
  }
}
