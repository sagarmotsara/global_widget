import 'dart:isolate';

import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  final Icon icon;
  final int initialText;
  final String trailingString;
  final DateTime date;

  const InfoTile(
      {Key? key,
      required this.icon,
      required this.date,
      required this.initialText,
      required this.trailingString})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.085,
      width: width,
      decoration: BoxDecoration(
          // color: Colors.white,
          border: Border(
            top: BorderSide(width: 0.5, color: Colors.grey.shade500),
            
          ),
          
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: width * 0.04),
          ),
          icon,
          Text("$initialText",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.indigo.shade900)),
          const Padding(padding: EdgeInsets.only(left: 10.0)),
          Text(trailingString,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.green)),
          const Spacer(),
          Text("12/10/2021", style: TextStyle(color: Colors.indigo.shade900)),
          const Padding(padding: EdgeInsets.only(right: 9.0))
        ],
      ),
    );
  }
}
