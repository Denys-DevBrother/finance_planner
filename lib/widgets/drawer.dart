import 'package:finacial_planner/blocs/navigation/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerApp extends StatefulWidget {
  const DrawerApp({Key? key}) : super(key: key);

  @override
  State<DrawerApp> createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: navigationBloc..add(NavigationInitialEvent()),
      child: Drawer(
          backgroundColor: Color.fromRGBO(250, 255, 0, 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              Expanded(
                child: BlocBuilder<NavigationBloc, NavigationState>(
                  builder: (context, state) {
                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.pagesList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              navigationBloc..add(NavigationSelectedEvent(index: index));
                              Navigator.of(context).pop();
                            },
                            child: drawerItem(state.pagesList[index]['title'],
                                state.pagesList[index]['selected']),
                          );
                        });
                  },
                ),
              )
            ],
          )),
    );
  }

  Widget drawerItem(
    String title,
    bool isSelect,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            color: isSelect ? Colors.black : Colors.transparent,
            width: 10,
            height: 20,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
