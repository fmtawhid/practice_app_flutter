import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(Icons.sort, size: 30,color: Colors.indigo,),
          Padding(padding: EdgeInsets.only(left: 20),child: Text('Your Law', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold,color: Colors.indigo),),),
          Spacer(),
          Badge(
            backgroundColor: Colors.red,
            padding: EdgeInsets.all(7),
            // badgeContent: Text('7', style: TextStyle(color: Colors.white)),
            child: InkWell(onTap: (){ Navigator.pushNamed(context, 'product');},child: Icon(Icons.no_accounts, size: 25,color: Colors.indigo,),),
          )
        ],
      ),

    );
  }
}