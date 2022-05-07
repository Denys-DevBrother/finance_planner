import 'package:finacial_planner/blocs/auth/auth_bloc.dart';
import 'package:finacial_planner/screens/register.dart';
import 'package:finacial_planner/screens/sing_in.dart';
import 'package:finacial_planner/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(31, 31, 31, 1),
      body: SafeArea(
        child: Center(
          child: BlocBuilder<AuthBloc, AuthState>(
            bloc: authBloc,
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "lib/src/img/logo.png",
                    scale: 0.8,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('БАЗОВА ФІНАНСОВА', style: Styles.mainFont),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('ІНФОРМАЦІЯ', style: Styles.mainFont),
                  const Text('(версія 1.0)',
                      style: TextStyle(color: Color.fromRGBO(171, 171, 171, 1), fontSize: 10)),
                  const SizedBox(
                    height: 100,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SingIn()),
                      );
                    },
                    child: Container(
                        width: 150,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1, color: Colors.yellow)),
                        child: Text(
                          'ВХІД',
                          style: Styles.mainFont.copyWith(
                            fontSize: 16,
                          ),
                        )),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Register()),
                      );
                    },
                    child: const Text('Реєстрація',
                        style: TextStyle(
                            color: Color.fromRGBO(171, 171, 171, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w700)),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
