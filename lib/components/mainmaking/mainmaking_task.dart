import 'package:finacial_planner/components/mainmaking/box.dart';
import 'package:finacial_planner/components/mainmaking/task.dart';
import 'package:flutter/material.dart';

class MainmakingTask extends StatefulWidget {
  const MainmakingTask({Key? key}) : super(key: key);

  @override
  State<MainmakingTask> createState() => _MainmakingTaskState();
}

class _MainmakingTaskState extends State<MainmakingTask> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 80),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 30,
                        ),
                        Task(
                          num: '1.',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Task(
                          num: '2.',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Task(
                          num: '3.',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Task(
                          num: '4.',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Task(
                          num: '5.',
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        Task(
                          num: '1.',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Task(
                          num: '2.',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Task(
                          num: '3.',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Task(
                          num: '4.',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Task(
                          num: '5.',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        '5 кроків для збільшення доходів',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                        //textAlign: TextAlign.left
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Box(),
                      const SizedBox(
                        height: 5,
                      ),
                      const Box(),
                      const SizedBox(
                        height: 5,
                      ),
                      const Box(),
                      const SizedBox(
                        height: 5,
                      ),
                      const Box(),
                      const SizedBox(
                        height: 5,
                      ),
                      const Box(),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        '5 кроків для зменшення витрат',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Box(),
                      const SizedBox(
                        height: 5,
                      ),
                      const Box(),
                      const SizedBox(
                        height: 5,
                      ),
                      const Box(),
                      const SizedBox(
                        height: 5,
                      ),
                      const Box(),
                      const SizedBox(
                        height: 5,
                      ),
                      const Box(),
                      const SizedBox(
                        height: 5,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Ідея на мільйон',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                        //textAlign: TextAlign.left
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .8,
                        height: 200,
                        child: const TextField(
                          decoration: InputDecoration(
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5))),
                            fillColor: Color.fromRGBO(56, 56, 56, 1),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
