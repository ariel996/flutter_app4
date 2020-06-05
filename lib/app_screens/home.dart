import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          padding: EdgeInsets.only(left: 10.0, top: 40.0),
          alignment: Alignment.center,
          color: Colors.deepPurple,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Flight",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Yaounde est une ville",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                      ),
                    ),
                  )
                ],
              ),
              FlightImage(),
              FlightBookButton()
            ],
          )
        )
    );
    throw UnimplementedError();
  }
}

class FlightImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/Front.jpg');
    Image image = Image(image: assetImage, width: 250, height: 250,);
    return Container(child: image);
    throw UnimplementedError();
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
        color: Colors.deepOrange,
        child: Text(
          "Book Your Flight",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontFamily: "Raleway",
            fontWeight: FontWeight.w700
          ),
        ),
        elevation: 6.0,
        onPressed: () => bookFlight(context)
      ),
    );
    throw UnimplementedError();
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Flight Booked successfully."),
      content: Text("Have a pleasant flight"),
    );

    showDialog(
        context: context,
      builder: (BuildContext context) => alertDialog
    );
  }

}