import 'package:flutter/material.dart';
import 'package:node_flutter_practice/pages/BusService/Screens/SingleBusDetailsScreen.dart';
import 'package:node_flutter_practice/pages/BusService/models/buses.dart';


class BusItems extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String duration;
  final Weather NonAc;
  final Affordablility Affordable;

  BusItems({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.duration ,
    @required this.NonAc,
    @required this.Affordable ,

});

  String get AffordablilityText {
    switch(Affordable){
      case Affordablility.Luxurious:
        return 'Luxurious';
        break;

      case Affordablility.Affordable:
        return 'Local';
        break;
      case Affordablility.Pricey:
      return 'Rich';
      break;
      default:
        return 'unKnown';
    }
  }

  String get WeatherText {
    switch(NonAc){
      case Weather.Local:
        return 'Local';
        break;

      case Weather.NonAc:
        return 'NonAc';
        break;
      case Weather.AC:
        return 'AC';
        break;
      default:
        return 'unKnown';

    }
  }


  void selectBus(BuildContext context){
    Navigator.of(context).pushNamed(SingleBusDetailsScreen.routeBus, arguments: id );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=> selectBus(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),

        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(imageUrl, height: 250, width: double.infinity, fit: BoxFit.cover,),

                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: Container(
                    width: 320,
                    color: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 5,
                    horizontal: 20),

                    child: Text(
                      title,
                      style: TextStyle(fontSize: 26.0, color: Colors.white ),
                      softWrap: true,
                      overflow: TextOverflow.fade,

                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(children: [
                    Icon(Icons.timer,size: 25.0, color: Colors.blue,),
                    SizedBox(width: 6,),
                    Text('$duration',style: TextStyle(fontSize: 26.0, color: Colors.blueGrey, fontWeight: FontWeight.bold ),),
                  ],),
                  Row(children: [
                    Icon(Icons.rice_bowl_sharp,size: 25.0,),
                    SizedBox(width: 6,),
                    Text('$AffordablilityText',style: TextStyle(fontSize: 26.0, color: Colors.indigo, fontWeight: FontWeight.bold ),),
                  ],),
                  Row(children: [
                    Icon(Icons.ac_unit,size: 25.0, color: Colors.deepOrange,),
                    SizedBox(width: 6,),
                    Text('$WeatherText',style: TextStyle(fontSize: 26.0, color: Colors.black, fontWeight: FontWeight.bold ),),
                  ],)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
