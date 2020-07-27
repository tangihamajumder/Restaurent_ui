import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:restaurant_book/details.dart';

class MyRestaurantBooking extends StatefulWidget {
  @override
  _MyRestaurantBookingState createState() => _MyRestaurantBookingState();
}

class _MyRestaurantBookingState extends State<MyRestaurantBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      body: Container(
        //color: Colors.red,
        padding: EdgeInsets.only(left: 10.0, top: 35.0, right: 10.0),
        child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Discover",
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              )
            ],
          ),
          SizedBox(height: 20.0),
          Container(
            //color:Colors.purple,
            height: 50.0,
            child:
                ListView(scrollDirection: Axis.horizontal, children: <Widget>[
              buildTopChip("healthy", true),
              buildTopChip("italian", false),
              buildTopChip("maxican", false),
              buildTopChip("asian", false),
              buildTopChip("chinese", false),
              buildTopChip("haitian", false),
            ]),
          ),
          Container(
              child: Expanded(
            child: ListView(
              children: <Widget>[
                builditem("Joe's Linder", "123 reviews: S. Oxford 13th",
                    "assets/images/dish1.jpg", 4.5),
                builditem("Joe's Linder", "123 reviews: S. Oxford 13th",
                    "assets/images/dish2.jpg", 4.5),
                builditem("Joe's Linder", "123 reviews: S. Oxford 13th",
                    "assets/images/dish3.jpg", 4.5),
              ],
            ),
          ))
        ]),
      ),
    );
  }

  GestureDetector builditem(
      String title, String subTitle, String url, double rating) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => DetailPage(url)));
      },
      child: Container(
        //color:Colors.purple,
        margin: EdgeInsets.symmetric(vertical: 10.0),
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(children: <Widget>[
          Hero(
            tag: url,
            child: Container(
              height: 170,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(url),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  )),
            ),
          ),
          Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.0, spreadRadius: 1.0, color: Colors.grey)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      Text(
                        subTitle,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: Text(
                        rating.toString(),
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ))
        ]),
      ),
    );
  }

  Container buildTopChip(String label, bool isActive) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: Chip(
        padding: EdgeInsets.all(8.0),
        label: Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        backgroundColor: isActive ? Colors.orange : Colors.grey,
      ),
    );
  }
}
