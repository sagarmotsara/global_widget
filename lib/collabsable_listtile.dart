import 'package:baliza_widgets/info_tile.dart';
import 'package:flutter/material.dart';

class CollapsableListile extends StatefulWidget {
  final Icon icon;

  final String string;
  final List<InfoTile> list;
  const CollapsableListile(
      {Key? key, required this.icon, required this.list, required this.string})
      : super(key: key);

  @override
  State<CollapsableListile> createState() => _CollapsableListileState();
}

class _CollapsableListileState extends State<CollapsableListile> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20.0),
      child: Container(
        // padding: const EdgeInsets.only(right: 10.0, left: 10.0),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: ExpansionTile(
            trailing:  Icon(Icons.keyboard_arrow_down_rounded, color: Colors.indigo.shade900),
           
            title: SizedBox(
              height: height * 0.06,
              width: width,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  widget.icon,
                  const Padding(padding: EdgeInsets.only(right: 10.0)),
                  Text(widget.string,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.indigo.shade900)),
                ],
              ),
            ),
            children: widget.list
          )),
    );
  }
}

//  Widget mailTile(){
//     return
//  }
