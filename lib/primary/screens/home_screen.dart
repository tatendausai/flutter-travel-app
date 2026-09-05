import 'package:flutter/material.dart';
import 'package:flutteritravelzw/primary/widgets/contact_list.dart';
import 'package:flutteritravelzw/primary/widgets/events_list.dart';
import 'package:flutteritravelzw/primary/widgets/travel_list.dart';
import 'package:flutteritravelzw/primary/widgets/restaurant_list.dart';
import 'package:flutteritravelzw/primary/widgets/activity_list.dart';
import 'package:flutteritravelzw/primary/widgets/hotel_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Center(
          child: Text('itravel.zw'),
        ),
        actions: <Widget>[
          // IconButton(icon: Icon(Icons.list, color: Colors.white,), onPressed: null),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          children: <Widget>[
            TravelList(),
            HotelList(),
            ActivityList(),
            RestaurantList(),
            EventsList(),
            ContactList(),
          ],
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
