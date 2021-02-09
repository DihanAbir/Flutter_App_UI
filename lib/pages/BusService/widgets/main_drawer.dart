
import 'package:flutter/material.dart';
// import 'package:http/io_client.dart';
import 'package:node_flutter_practice/pages/BusService/Screens/FinterScreen.dart';

class MainDrawer extends StatelessWidget {

  Widget buildList(String title, IconData icon, Function tapHandler ){
    return  ListTile(
      leading: Icon(icon, size: 26,),
      title: Text( title, style: TextStyle(fontSize: 20),),
      onTap:
        tapHandler
      ,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text('Hotel Setting', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color:  Colors.blueGrey),),
          ),
          SizedBox(height: 20,),

          buildList('Hotels', Icons.room_preferences_rounded, (){
            Navigator.of(context).pushReplacementNamed('/')  ;
          } ),

          buildList('Filter', Icons.settings, (){
            Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
          } ),

        ],
      ),
    );
  }
}
