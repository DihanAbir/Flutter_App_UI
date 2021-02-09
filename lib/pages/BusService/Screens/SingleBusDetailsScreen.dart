import 'package:flutter/material.dart';
import '../dammiData.dart';
class SingleBusDetailsScreen extends StatelessWidget {
  static const routeBus = '/Bus-details';

  @override
  Widget build(BuildContext context) {
    final busId = ModalRoute.of(context).settings.arguments;
    final selectedBus = DUMMY_BUS.firstWhere((bus) => bus.id == busId  );
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedBus.title}'),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              selectedBus.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
              child: RaisedButton(
                onPressed:(){},
                child: Text("${selectedBus.NonAc}"),
              ),
            ),
          Container(
            child: RaisedButton(
              onPressed:(){},
              child: Text("${selectedBus.Affordable}"),
            ),
          ),
          Container(
            child: RaisedButton(
              onPressed:(){},
              child: Text("${selectedBus.categories}"),
            ),
          ),
        ],
      ),
    );
  }
}
