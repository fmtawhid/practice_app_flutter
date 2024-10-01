import 'package:flutter/material.dart';
import 'package:secondapp/product.dart';
import 'package:secondapp/userprofile.dart';
import 'home.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        'product': (context) => ProductView(),
        'profile': (context) => userProfile()
      },
    );
  }
}

