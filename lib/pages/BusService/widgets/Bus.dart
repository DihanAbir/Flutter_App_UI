import 'package:flutter/material.dart';
import 'package:node_flutter_practice/pages/BusService/Screens/CategoryBusScreen.dart';
import 'package:node_flutter_practice/pages/BusService/Screens/FinterScreen.dart';
import 'package:node_flutter_practice/pages/BusService/Screens/SingleBusDetailsScreen.dart';
import 'package:node_flutter_practice/pages/BusService/Screens/tap_Screen.dart';
// import 'file:///C:/Users/USER/AndroidStudioProjects/node_flutter_practice/lib/Screens/CategoryBusScreen.dart';

import '../Screens/categories_screen.dart';

class Bus extends StatefulWidget {
  @override
  _BusState createState() => _BusState();
}

class _BusState extends State<Bus> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: TapScreen(),
      routes: {
        '/category-Bus' : (otx) => CategoryBusScreen(),
        SingleBusDetailsScreen.routeBus: (otx) => SingleBusDetailsScreen(),
        FilterScreen.routeName: (otx) => FilterScreen(),
      },
    );
  }
}
