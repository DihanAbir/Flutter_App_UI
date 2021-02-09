import 'package:flutter/material.dart';
import 'package:node_flutter_practice/pages/BusService/Screens/FavoriteBusScreen.dart';
import 'package:node_flutter_practice/pages/BusService/Screens/categories_screen.dart';
import 'package:node_flutter_practice/pages/BusService/widgets/category_items.dart';


class TapScreen extends StatefulWidget {
  @override
  _TapScreenState createState() => _TapScreenState();
}

class _TapScreenState extends State<TapScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.category), text: 'Category',),
            Tab(icon: Icon(Icons.star), text: 'Favorite',),


          ],
        ),
      ),
      body: TabBarView(children: [
        categoryScreen(),
        FavoriteBusScreen(),
      ],),
    ));
  }
}
