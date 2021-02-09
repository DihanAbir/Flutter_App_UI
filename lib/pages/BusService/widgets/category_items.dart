import 'package:flutter/material.dart';

class CategoryItems extends StatelessWidget {
  final String title ;
  final Color color;
  final String id;

  CategoryItems( this.title,this.color, this.id);

  void selectCategory (BuildContext ctx){
    Navigator.of(ctx).pushNamed(
        '/category-Bus',arguments: {
          'id': id,
          'title' : title,
    },

    );
    print(id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      // onTap: () => {print('clicked')},
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(title, style: Theme.of(context).textTheme.headline6,),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:[
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),

      ),
    );
  }
}
