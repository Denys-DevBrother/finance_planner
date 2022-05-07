import 'package:finacial_planner/blocs/auth/auth_bloc.dart';
import 'package:finacial_planner/screens/indetification.dart';
import 'package:finacial_planner/screens/navigator_page.dart';
import 'package:finacial_planner/styles/text_style.dart';
import 'package:flutter/material.dart';

class SingIn extends StatefulWidget {
  const SingIn({Key? key}) : super(key: key);

  @override
  _SingInState createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            centerTitle: true,
            title: const Text('ВХІД', style: Styles.mainFont)),
        backgroundColor: const Color.fromRGBO(31, 31, 31, 1),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: email,
                    decoration: const InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(),
                        fillColor: Color.fromRGBO(56, 56, 56, 1),
                        labelText: 'Пошта',
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(171, 171, 171, 1), fontSize: 10)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: password,
                    obscureText: true,
                    decoration: const InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(),
                        fillColor: Color.fromRGBO(56, 56, 56, 1),
                        labelText: 'Пароль',
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(171, 171, 171, 1), fontSize: 10)),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                GestureDetector(
                  onTap: () => authBloc
                    ..add(AuthLoginEvent(
                      email: email.text.trim(),
                      password: password.text.trim(),
                    )),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NavigatorPage()),
                    ),
                    child: Container(
                        width: 150,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1, color: Colors.yellow)),
                        child: const Text(
                          'УВІЙТИ',
                          style: Styles.mainFont,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
