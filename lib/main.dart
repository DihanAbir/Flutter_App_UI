import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:node_flutter_practice/pages/BusService/widgets/Bus.dart';
import 'package:node_flutter_practice/pages/HotelService/Widgets/Hotel.dart';
// import 'package:node_flutter_practice/pages/HotelService/widgets/Bus.dart';
import 'package:node_flutter_practice/pages/Newsfeed.dart';
import 'package:node_flutter_practice/pages/Notification.dart';

// import 'file:///C:/Users/USER/AndroidStudioProjects/node_flutter_practice/lib/pages/BusService/Bus.dart';
import 'file:///C:/Users/USER/AndroidStudioProjects/node_flutter_practice/lib/pages/Profile/profile.dart';
import 'package:node_flutter_practice/pages/post.dart';
import 'file:///C:/Users/USER/AndroidStudioProjects/node_flutter_practice/lib/pages/Profile/profile.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(scopes: [
  'profile',
  'email',
]);

void main() {
  runApp(MaterialApp(
    title: 'Google sign in',
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("App Bar.."),
      ),
      body: MainApp(),
      bottomNavigationBar: curveNav(),
    ),
  ));
}

class curveNav extends StatefulWidget {
  @override
  _curveNavState createState() => _curveNavState();
}

class _curveNavState extends State<curveNav> {
  // final pages = [Newsfeed(), Bus(), Post(), Hotels(), profile()];
  final pages = [Newsfeed(), Bus(), Post(), Hotel(), profile()];
  var _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(
          milliseconds: 300,
        ),
        animationCurve: Curves.bounceInOut,
        index: 0,
        color: Colors.pink,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.white,
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        items: <Widget>[
          Icon(Icons.list, size: 30),
          Icon(Icons.bus_alert, size: 30),
          Icon(Icons.add, size: 30),
          Icon(Icons.hotel_rounded, size: 30),
          Icon(Icons.menu, size: 30),
        ],
      ),
      body: pages[_page],
    );
  }
}


// Google login
class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  GoogleSignInAccount _currentUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount account) {
      setState(() {
        _currentUser = account;
      });
    });
    _googleSignIn.signInSilently();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_currentUser != null) {
      return Column(
        children: [
          ListTile(
              leading: GoogleUserCircleAvatar(identity: null),
              title: Text(_currentUser.displayName ?? ''),
              subtitle: Text(_currentUser.email ?? '')),
          RaisedButton(
            onPressed: _handleSignOut,
            child: Text("SIGN OUT"),
          )
        ],
      );
    } else {
      return Column(
        children: [
          Text("Your are not sign in"),
          RaisedButton(
            onPressed: _handleSignIn,
            child: Text("SIGN OUT"),
          )
        ],
      );
    }
  }

  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  Future<void> _handleSignOut() {
    _googleSignIn.disconnect();
  }
}
