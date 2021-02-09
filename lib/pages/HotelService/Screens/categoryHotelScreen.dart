import 'package:flutter/material.dart';
import 'package:node_flutter_practice/pages/BusService/widgets/Bus_items.dart';
import 'package:node_flutter_practice/pages/HotelService/Widgets/Hotel_Items.dart';
import 'package:node_flutter_practice/pages/HotelService/dummyData.dart';
// import '../dammiData.dart';

class  CategoryHotelScreen extends StatelessWidget {
  // final String title ;
  // final String id;
  //
  //
  // CategoryBusScreen(this.title, this.id );
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final BusTitle = routeArgs['title'];
    final BusId = routeArgs['id'];
    final categoryBus = DUMMY_Hotel.where((bus){
      return bus.categories.contains(BusId);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(BusTitle),
        ),
        body: ListView.builder(itemBuilder: (ctx, index){
          return HotelItems(id: categoryBus[index].id,title: categoryBus[index].title, imageUrl: categoryBus[index].imageUrl, NonAc: categoryBus[index].NonAc, Affordable: categoryBus[index].Affordable);
        },itemCount:categoryBus.length ,)
    );
  }
}
