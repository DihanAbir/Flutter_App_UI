

import 'package:flutter/material.dart';
import 'package:node_flutter_practice/pages/Profile/Dashboard.dart';

import 'package:node_flutter_practice/pages/Profile/profileTabs.dart';


class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(length: 2, child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 150,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.perm_identity), text: 'Profile',),
              Tab(icon: Icon(Icons.dashboard), text: 'Deshboard',),


            ],
          ),
        ),
        body: TabBarView(children: [
          profileTabs(),
          Dashboard(),
        ],),
      )),
    );
  }
}

