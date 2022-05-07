import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(31, 31, 31, 1),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(),
                        fillColor: Color.fromRGBO(56, 56, 56, 1),
                        labelText: 'Пошта',
                        labelStyle: TextStyle(
                            color: Color.fromRGBO(171, 171, 171, 1),
                            fontSize: 10)),
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
                        labelText: 'Пароль',
                        labelStyle: TextStyle(
                            color: Color.fromRGBO(171, 171, 171, 1),
                            fontSize: 10)),
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
                Container(
                  width: 170,
                  height: 50,
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: Colors.yellow)),
                  child: const Text(
                    'вийти',
                    style: TextStyle(fontSize: 24, color: Colors.yellow),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 170,
                  height: 50,
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromRGBO(171, 171, 171, 1),
                    ),
                  ),
                  child: const Text(
                    'Видалити всі дані',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(171, 171, 171, 1)),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
