import 'package:flutter/material.dart';
import 'package:restaurant_book/MyRestaurantBooking.dart';
//import 'package:restaurant_book/details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyRestaurantBooking(),
    );
  }
}



