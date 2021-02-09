import 'package:flutter/material.dart';
import 'package:node_flutter_practice/pages/BusService/Screens/CategoryBusScreen.dart';
import 'package:node_flutter_practice/pages/BusService/Screens/SingleBusDetailsScreen.dart';
import 'package:node_flutter_practice/pages/BusService/Screens/tap_Screen.dart';
import 'package:node_flutter_practice/pages/HotelService/Screens/SingleHotelDetailsScreen.dart';
import 'package:node_flutter_practice/pages/HotelService/Screens/categoryHotelScreen.dart';
// import 'file:///C:/Users/USER/AndroidStudioProjects/node_flutter_practice/lib/Screens/CategoryBusScreen.dart';

// import '../Screens/categories_screen.dart';

class Hotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: TapScreen(),
      routes: {
        '/category-hotel' : (otx) => CategoryHotelScreen(),
        SingleHotelDetailsScreen.routeHotel: (otx) => SingleHotelDetailsScreen(),
      },
    );
  }
}
