


import 'package:baliza_widgets/collapsable2.dart';
import 'package:baliza_widgets/dotted_container_widget.dart';
import 'package:baliza_widgets/global_elevated_button.dart';
import 'package:baliza_widgets/info_tile.dart';
import 'package:baliza_widgets/info_widget.dart';

import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<InfoTile> list = [
    InfoTile(
        icon: const Icon(Icons.bookmark),
        date: DateTime.now(),
        initialText: 29203,
        trailingString: "0 9E (2374.9)"),
    InfoTile(
        icon: const Icon(Icons.bookmark),
        date: DateTime.now(),
        initialText: 29203,
        trailingString: "0 9E (2374.9)"),
    InfoTile(
        icon: const Icon(Icons.bookmark),
        date: DateTime.now(),
        initialText: 29203,
        trailingString: "0 9E (2374.9)"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
            color: Colors.brown,
            child:  Center(child:Column(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                    
                     CollapsableListile(icon: const Icon(Icons.bookmark), list: list, string: "Depositos ets en curso"),
                     SizedBox(height: 20.0,),
                      const InfoWidget(leadingString: "Recompensas generades" ,price: "0, 9E (3854, 06*)", info: "",),
                      SizedBox(height: 20.0,),
                     const InfoCard(percentage:55 ,string: "Estikacal remaub da putla da vinci da capla"),
                     SizedBox(height: 20.0,),

                     GlobalElevatedButton(color: Colors.pink, string: "Add New Stake")
              ],
            )
            )
            )
            );
  }
}
