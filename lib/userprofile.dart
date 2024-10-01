import 'package:flutter/material.dart';
import 'package:secondapp/items/item.dart';


class userProfile extends StatelessWidget{
  const userProfile({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement ==
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/2.jpg'),
                    fit: BoxFit.cover,
                  ),

                ),

              ),
              Padding(
                padding: EdgeInsets.only(top: 150),

                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('images/1.jpg'),
                ),
              ),
            ],
          ),
          Container(
            color: Colors.blue,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                    " Full Name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                ),
                Text('Bio DSata Bio DSata Bio DSata Bio DSata Bio DSata Bio DSata Bio DSata Bio DSata '),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('3', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      Text('Total Post', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('3', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      Text('Total Post', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('3', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    Text('Total Post', style: TextStyle(fontSize: 18)),
                  ],
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('3', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      Text('Total Post', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),

              ],

            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for(int i=1; i<8; i++)
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("images/$i.jpg", width: 40,height: 40,),
                          Text('T-Shirt', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color:Colors.indigo),),
                        ],
                      ),
                    ),

                ],
              ),
            ),
          ),
          ItemWidged(),
        ],
      )
    );
  }
}