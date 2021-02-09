import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/USER/AndroidStudioProjects/node_flutter_practice/lib/pages/BusService/widgets/category_items.dart';
import 'file:///C:/Users/USER/AndroidStudioProjects/node_flutter_practice/lib/pages/BusService/dammiData.dart';

class categoryScreen extends StatefulWidget {
  @override
  _categoryScreenState createState() => _categoryScreenState();
}

class _categoryScreenState extends State<categoryScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: EdgeInsets.all(25.0),
        children:  DUMMY_DATA.map((category) => CategoryItems(category.title, category.color, category.id), ).toList() ,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3/2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ));
  }
}
