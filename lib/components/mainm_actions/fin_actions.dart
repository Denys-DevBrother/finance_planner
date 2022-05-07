import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FinActions extends StatefulWidget {
  const FinActions({Key? key}) : super(key: key);

  @override
  State<FinActions> createState() => _FinActionsState();
}

class _FinActionsState extends State<FinActions> {
  int _current = 0;
  int _current1 = 0;

  final CarouselController _controller = CarouselController();
  final CarouselController _controller1 = CarouselController();
  List<Widget> imageSliders = [
    const TextField(
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(),
        fillColor: Color.fromRGBO(56, 56, 56, 1),
        //contentPadding: EdgeInsets.symmetric(vertical: 150.0),
      ),
      maxLines: 10,
    ),
    const TextField(
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(),
        fillColor: Color.fromRGBO(56, 56, 56, 1),
        //contentPadding: EdgeInsets.symmetric(vertical: 150.0),
      ),
      maxLines: 10,
    ),
    const TextField(
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(),
        fillColor: Color.fromRGBO(56, 56, 56, 1),
        //contentPadding: EdgeInsets.symmetric(vertical: 150.0),
      ),
      maxLines: 10,
    ),
    const TextField(
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(),
        fillColor: Color.fromRGBO(56, 56, 56, 1),
        //contentPadding: EdgeInsets.symmetric(vertical: 150.0),
      ),
      maxLines: 10,
    ),
    const TextField(
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(),
        fillColor: Color.fromRGBO(56, 56, 56, 1),
        //contentPadding: EdgeInsets.symmetric(vertical: 150.0),
      ),
      maxLines: 10,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40.0, bottom: 20),
                child: Text(
                  '5 кроків для збільшення доходів',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: imageSliders.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      child: Center(
                        child: Text(
                          '${entry.key + 1}.',
                          style: TextStyle(
                              color: _current == entry.key
                                  ? Colors.yellow
                                  : Colors.grey),
                        ),
                      ),
                      width: 30.0,
                      height: 30.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              width: 2,
                              color: _current == entry.key
                                  ? Colors.yellow
                                  : Colors.grey)),
                    ),
                  );
                }).toList(),
              ),
              CarouselSlider(
                carouselController: _controller,
                options: CarouselOptions(
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
                items: imageSliders,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageSliders.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 4.0,
                      height: 4.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == entry.key
                              ? Colors.yellow
                              : Colors.grey),
                    ),
                  );
                }).toList(),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40.0, bottom: 20),
                child: Text(
                  '5 кроків для зменшення витрат',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: imageSliders.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller1.animateToPage(entry.key),
                    child: Container(
                      child: Center(
                        child: Text(
                          '${entry.key + 1}.',
                          style: TextStyle(
                              color: _current1 == entry.key
                                  ? Colors.yellow
                                  : Colors.grey),
                        ),
                      ),
                      width: 30.0,
                      height: 30.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              width: 2,
                              color: _current1 == entry.key
                                  ? Colors.yellow
                                  : Colors.grey)),
                    ),
                  );
                }).toList(),
              ),
              CarouselSlider(
                carouselController: _controller1,
                options: CarouselOptions(
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current1 = index;
                      });
                    }),
                items: imageSliders,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageSliders.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller1.animateToPage(entry.key),
                    child: Container(
                      width: 4.0,
                      height: 4.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current1 == entry.key
                              ? Colors.yellow
                              : Colors.grey),
                    ),
                  );
                }).toList(),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40.0, bottom: 20),
                child: Text(
                  'Ідея на мільйон:',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    fillColor: Color.fromRGBO(56, 56, 56, 1),
                    //contentPadding: EdgeInsets.symmetric(vertical: 150.0),
                  ),
                  maxLines: 8,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
