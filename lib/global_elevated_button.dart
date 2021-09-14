import 'package:flutter/material.dart';

class GlobalElevatedButton extends StatelessWidget {
  final  Color color;
  final String string;
  const GlobalElevatedButton({ Key? key , required this.color, required this.string}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20.0),
      child: MaterialButton(onPressed: (){}, child: Container(
         width: width,
         height: height*0.05,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Center(child: Text(string, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)), )),
    );
  }
}