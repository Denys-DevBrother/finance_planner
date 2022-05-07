import 'package:finacial_planner/blocs/auth/auth_bloc.dart';
import 'package:finacial_planner/blocs/navigation/navigation_bloc.dart';
import 'package:finacial_planner/planner_app.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => authBloc,
          ),
          BlocProvider<NavigationBloc>(
            create: (context) => navigationBloc,
          ),
        ],
        child: const MyApp(),
      )));
}
