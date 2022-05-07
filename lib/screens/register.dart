import 'package:finacial_planner/blocs/auth/auth_bloc.dart';
import 'package:finacial_planner/styles/text_style.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            centerTitle: true,
            title: const Text('РЕЄСТРАЦІЯ', style: Styles.mainFont)),
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
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(),
                        fillColor: Color.fromRGBO(56, 56, 56, 1),
                        labelText: 'Ім\'я',
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
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(),
                        fillColor: Color.fromRGBO(56, 56, 56, 1),
                        labelText: 'Повторити пароль',
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(171, 171, 171, 1), fontSize: 10)),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () => authBloc
                    ..add(AuthRegisterEvent(
                      email: email.text.trim(),
                      password: password.text.trim(),
                    )),
                  child: Container(
                      width: 250,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1, color: Colors.yellow)),
                      child: Text(
                        'ЗАРЕЄСТРУВАТИСЯ',
                        style: Styles.mainFont.copyWith(fontSize: 20),
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
