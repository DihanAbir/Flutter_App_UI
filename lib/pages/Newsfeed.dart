import 'package:flutter/material.dart';
import 'package:node_flutter_practice/loginPage/Login.dart';

class Newsfeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:60.2),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Newsfeed"),
          backgroundColor: Colors.grey,
          actions: [
            IconButton(icon: Icon(Icons.login, color: Colors.white, size: 30.0,),
                padding: EdgeInsets.only(right: 15.0),
                onPressed:(){_LoginBottomSheet(context);}
            )
          ],
        ),
        //     : Column(
        //
        // ),
        backgroundColor: Colors.redAccent,
        body: Column(
          children: [
            stories(),
            TouristSport(),

          ],
        ),
      ),
    );
  }
}



// circle section
class stories extends StatefulWidget {
  @override
  _storiesState createState() => _storiesState();
}

class _storiesState extends State<stories> {
  @override
  Widget build(BuildContext context) {
    return Row (
      // scrollDirection: Axis.horizontal,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 30,
          child: Icon(Icons.add),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(

            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1609284444365-bd26b1fce0c0?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=375&q=80"),
            child: GestureDetector(

              onTap: () async {

                await showDialog(
                    context: context,


                    builder: (_) => ImageDialog()
                );
              },
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1609284444365-bd26b1fce0c0?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=375&q=80"), radius: 30,),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1609284444365-bd26b1fce0c0?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=375&q=80"), radius: 30,),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1609284444365-bd26b1fce0c0?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=375&q=80"), radius: 30,),

        ),

      ],
    );
  }

}

class ImageDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(

        width: 200,
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://images.unsplash.com/photo-1609284444365-bd26b1fce0c0?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=375&q=80"),
                fit: BoxFit.cover
            )
        ),
      ),
    );
  }
}


// Featured Tourist sport

class TouristSport extends StatefulWidget {
  @override
  _TouristSportState createState() => _TouristSportState();
}

class _TouristSportState extends State<TouristSport> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 10, 8, 20),
      child: Column(
        children: [
          Container(
            child: Row(
               children: [
                 Text('Featured Place', textAlign: TextAlign.center,style: TextStyle(fontSize: 20, color: Colors.black),),
                 Spacer(),
                 RaisedButton(onPressed: _seeMoreHandler, child: Text("See More"),)
               ],
            ),

          ),
          Container(
            child: Row(
              children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network('https://images.unsplash.com/photo-1566073771259-6a8506099945?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80', width: 150, ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network('https://images.unsplash.com/photo-1566073771259-6a8506099945?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80', width: 150, ),
                    ),
                  ],
                ),
              ),



              ],
            ),
          )

        ],
      ),
    );

  }
  Future<void> _seeMoreHandler() async{

  }
}



void _LoginBottomSheet(context){
  showModalBottomSheet(context: context, builder: (BuildContext bc ){
    return Container(
      // height: MediaQuery.of(context).size.height*20.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [

            Row(
              children: [
                  Text('Login'),
                  Spacer(),
                  IconButton(icon: Icon(Icons.cancel, color: Colors.red, size: 25.0),
                      onPressed: (){
                        Navigator.of(context).pop();
                      }
                  ),
              ],
            ),

            Container(
              width: 120.0,
              height: 30.0,
              child: RaisedButton(
                padding: EdgeInsets.only(top: 3.0,bottom: 3.0,left: 3.0),
                color: Colors.red,
                child: Row(
                  children: <Widget>[
                    Text('Play google', style: TextStyle(color: Colors.white),),
                    Icon(Icons.play_arrow, color: Colors.white,),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Ink(
                color: Color(0xFF397AF3),
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(Icons.android), // <-- Use 'Image.asset(...)' here
                      SizedBox(width: 12),
                      Text('Sign in with Google'),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      )
    );
  });

}



