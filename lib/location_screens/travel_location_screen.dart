import 'package:flutter/material.dart';
import 'package:flutteritravelzw/final_screens/travel_final_screen.dart';
import 'package:flutteritravelzw/itravel_main/heading_models_main/travel_model.dart';
import 'package:flutteritravelzw/itravel_main/screen_models_main/travel_screen_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TravelLocationScreen extends StatefulWidget {
  final TravelDestination travelDestination;

  const TravelLocationScreen({Key? key, required this.travelDestination})
      : super(key: key);

  @override
  _TravelLocationScreenState createState() => _TravelLocationScreenState();
}

class _TravelLocationScreenState extends State<TravelLocationScreen> {
  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 140.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Hero(
                  tag: widget.travelDestination.imageUrl,
                  child: ClipRRect(
                    //borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      image: AssetImage(widget.travelDestination.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 30.0,
                bottom: 10.0,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      iconSize: 24.0,
                      color: Colors.white,
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.gps_fixed,
                          size: 20.0,
                          color: Colors.white,
                        ),
                        SizedBox(width: 4.0),
                        Text(
                          widget.travelDestination.city,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        FaIcon(
                          FontAwesomeIcons.car,
                          size: 15.0,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          'Travel',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            letterSpacing: 2.4,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.travelDestination.travels.length,
              itemBuilder: (BuildContext context, int index) {
                Travel travel = widget.travelDestination.travels[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => TravelFinalScreen(
                        travel: travel,
                      ),
                    ),
                  ),
                  child: Container(
                    height: 140.0,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(30.0, 5.0, 10.0, 5.0),
                          height: 150.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(100.0, 5.0, 20.0, 5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      width: 150.0,
                                      child: Text(
                                        travel.name,
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.5,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0.0, 0.0, 5.0, 0.0),
                                      child: Icon(
                                        Icons.save,
                                        size: 30.0,
                                        color: Colors.amber,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.save,
                                          color: Colors.blueGrey[200],
                                          size: 15.0,
                                        ),
                                        SizedBox(width: 4.0),
                                        Text(
                                          'Saves',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.2,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      travel.likes,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5.0),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                      size: 15.0,
                                      color: Colors.redAccent,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      travel.location,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  width: double.infinity,
                                  child: Text(
                                    travel.headliner,
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10.0,
                          top: 5.0,
                          bottom: 6.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image(
                              width: 110,
                              image: AssetImage(travel.imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sort_by_alpha,
              size: 30.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 30.0,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
