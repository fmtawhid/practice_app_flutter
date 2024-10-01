
import 'package:flutter/material.dart';

class appBar2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          InkWell(child: Icon(Icons.construction),),
          Text('data'),

        ],
      ),
    );
  }
}