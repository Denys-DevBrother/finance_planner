import 'package:flutter/material.dart';

class HabitItem extends StatefulWidget {
  final String title;
  final int id;
  final bool selected;
  final Function callback;

  const HabitItem(
      {Key? key,
      required this.title,
      required this.id,
      required this.selected,
      required this.callback})
      : super(key: key);

  @override
  State<HabitItem> createState() => _HabitItemState();
}

class _HabitItemState extends State<HabitItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () => widget.callback(widget.id),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title.toUpperCase(),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                      width: 2,
                      color: widget.selected ? Colors.yellow : Colors.grey)),
              child: widget.selected
                  ? const Icon(
                      Icons.add,
                      color: Colors.yellow,
                    )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }
}
