import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'items/category.dart';
import 'items/appbar.dart';
import 'items/item.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('data')),
            ListTile(
              leading: Icon(Icons.cabin_sharp),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Logo'),
        backgroundColor: Colors.indigo,
        actions: [
          IconButton(onPressed: (){Navigator.pushNamed(context, 'profile');}, icon: Icon(Icons.account_circle, color: Colors.red,))
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        color: Colors.indigo,
        height: 60,
        onTap: (int index){},
        index: 2,
        items: [
          Icon(Icons.man, size: 30,color: Colors.white,),
          Icon(Icons.message, size: 30,color: Colors.white,),
          Icon(Icons.home, size: 30,color: Colors.white,),
          Icon(Icons.balance, size: 30,color: Colors.white,),
          Icon(Icons.border_color_outlined, size: 30,color: Colors.white,),

        ],
      ),

      body: ListView(

        children: [

          //HomeAppBar(),
          Container(padding: EdgeInsets.all(2),
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50)
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 250,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search Here...'
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.search, size: 27,color: Colors.indigo,)
                    ],
                  ),
                )

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: Text(
              'Category',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.indigo
              ),
            ),
          ),
          CategoryWidged(),

          Container(
            margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: Text(
              'Item View',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo
              ),
            ),
          ),
          ItemWidged(),





        ],
      ),
    );
  }
}