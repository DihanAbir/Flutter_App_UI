
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http ;

class profileTabs extends StatefulWidget {
  @override
  _profileTabsState createState() => _profileTabsState();
}

class _profileTabsState extends State<profileTabs> {

  var url = 'https://jsonplaceholder.typicode.com/photos';
  var data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(url);
    // print(res.body);
    data = jsonDecode(res.body);
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(

        child: data != null ? ListView.builder(itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListTile(
              title: Text(data[index]['title']) ,
              leading: Image.network(data[index]['url']),
            ),
          );
        } ): Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

