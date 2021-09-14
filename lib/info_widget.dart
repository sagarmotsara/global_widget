import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final String leadingString;
  final String price;
  final String info;
  const InfoWidget(
      {Key? key,
      required this.info,
      required this.price,
      required this.leadingString})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: height * 0.05,
        width: width,
        decoration:  const BoxDecoration(
          
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(7))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Padding(padding: EdgeInsets.only(left: width*0.008)),
            Text("$leadingString:",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo.shade900)),
            Text(price,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.green)),
           
            IconButton(
              alignment: Alignment.centerRight,
                onPressed: () {},
                icon: Icon(Icons.info, color: Colors.indigo.shade900))
          ],
        ),
      ),
    );
  }
}
