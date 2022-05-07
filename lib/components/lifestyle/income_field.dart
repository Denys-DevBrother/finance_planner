import 'package:flutter/material.dart';

class IncomeField extends StatefulWidget {
  const IncomeField({Key? key, required this.logo, required this.title})
      : super(key: key);
  final String title;
  final Image logo;
  @override
  State<IncomeField> createState() => _IncomeFieldState();
}

class _IncomeFieldState extends State<IncomeField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
              ),
              child: widget.logo,
            ),
          ),

          Flexible(
            flex: 3,
            child: Text(
              widget.title,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          // SizedBox(
          //   width: 166,
          //   height: 50,),
          const Flexible(
            flex: 3,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                fillColor: Color.fromRGBO(56, 56, 56, 1),
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: const Color.fromRGBO(
            56,
            56,
            56,
            1,
          ),
        ),
      ),
      width: MediaQuery.of(context).size.width * 1.0,
      height: 50,
    );
  }
}
