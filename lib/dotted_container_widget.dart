import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class InfoCard extends StatelessWidget {
  final String string;
  final double percentage;
  const InfoCard({Key? key, required this.percentage, required this.string})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 40.0, right: 40.0),
      child: DottedBorder(
        color: Colors.white, //color of dotted/dash line
        strokeWidth: 1, //thickness of dash/dots
        dashPattern: const [5, 5],
        borderType: BorderType.RRect,
        radius: const Radius.circular(8),
        child: Container(
          width: width,
          height: height * 0.2,
          decoration: const BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                child: Text(
                  string,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    // overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 3,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 8.0,),
              Text("$percentage",
                  style: const TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
