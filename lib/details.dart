import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String url;
  DetailPage(this.url);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Chip(
            backgroundColor: Colors.teal,
            padding: EdgeInsets.fromLTRB(55, 12, 55, 12),
            label: Text("Book now",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    color: Colors.white))),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.url), fit: BoxFit.cover),
              ),
            ),
            Positioned(
                top: 40.0,
                right: 15.0,
                child: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.4),
                    child: IconButton(
                        icon: Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }))),
            buildAvatar(85, 'assets/images/profile.jpg'),
            buildAvatar(65, 'assets/images/profile.jpg'),
            buildAvatar(45, 'assets/images/profile.jpg'),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.40,
              left: 25.0,
              child: Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(width: 1.0, color: Colors.white),
                    borderRadius: BorderRadius.circular(20.0)),
                alignment: Alignment.center,
                child: Text(
                  "4.5",
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.45,
                left: 25.0,
                child: Container(
                  margin: EdgeInsets.only(top: 15.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(color: Colors.black.withOpacity(0.2))
                          ]),
                          child: Text("176 reviews, 10 Friends",
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.white)),
                        ),
                        SizedBox(height: 10.0),
                        Text("Sys Branch",
                            style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ]),
                )),
            Positioned(
                bottom: 0.0,
                child: Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      )),
                  child: SingleChildScrollView(
                    child: Column(children: <Widget>[
                      buildItemRow(context, "assets/images/dish3.jpg"),
                      buildItemRow(context, "assets/images/dish4.jpg"),
                      buildItemRow(context, "assets/images/dish2.jpg"),
                    ]),
                  ),
                ))
          ],
        ));
  }

  Container buildItemRow(BuildContext context, String url) {
    return Container(
      padding: EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: <Widget>[
          Container(
              height: 80.0,
              width: 80.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(url),
                  ))),
          SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Vegetables",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 15.0),
              Container(
                width: MediaQuery.of(context).size.width - 150,
                child: Text(
                  "You should consume 1 and 1/2 cups of vegetables per day according",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Positioned buildAvatar(double leftPosition, String url) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.40,
      left: leftPosition,
      child: Container(
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(url),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(width: 1.0, color: Colors.white),
        ),
      ),
    );
  }
}
