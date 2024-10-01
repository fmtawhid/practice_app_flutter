import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ItemWidged extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      childAspectRatio: 0.65,
      crossAxisCount: 2,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i=1;i<8;i++)
        Container(
          padding: EdgeInsets.only(left: 15,right: 15, top: 10,),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text(
                      '-50%',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),

                ],
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.all(1),
                  child: Image.asset(
                      'images/$i.jpg',
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 2),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Product Title',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'write Description write',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.indigo
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),

                    child: Text(
                      '\$100',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.add_shopping_cart,
                    color: Colors.indigo,

                  ),

                ],
              ),
            ],
          ),

        )

      ],
    );
  }
}









