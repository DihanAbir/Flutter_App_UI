import 'package:flutter/material.dart';
import 'package:node_flutter_practice/pages/BusService/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName=  '/filters';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {

  bool _withAc = false;
  bool _isDirect = false;
  bool _isLuxurious = false;


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text('Filter section'),

      ),

      drawer: MainDrawer(),
      body:Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust Bus '
            ),
          ),
          
          Expanded(child: ListView(
            children: [
              SwitchListTile(title: Text("Direct Destination"), value: _isDirect,subtitle: Text('Only Ac included'),
                  onChanged: (newValue){
                    setState(() {
                      _isDirect = newValue;
                    });
                  }),

              SwitchListTile(title: Text("Luxurious"), value: _isLuxurious,subtitle: Text('Only Ac included'),
                  onChanged: (newValue){
                    setState(() {
                      _isLuxurious = newValue;
                    });
                  }),

              SwitchListTile(title: Text("AC"), value: _withAc,subtitle: Text('Only Ac included'),
                  onChanged: (newValue){
                    setState(() {
                      _withAc = newValue;
                    });
                  }),



        ],
      )
    ),
    ],
    ),
    );}
}
