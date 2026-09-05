import 'package:flutter/material.dart';
import 'package:flutteritravelzw/primary/models/travel_page_model.dart';
import 'package:flutteritravelzw/itravel_main/screens_main/travel_screen.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:flutteritravelzw/models/eventspage_model.dart';
//import 'package:flutteritravelzw/screens/events_screen.dart';

class TravelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        itemCount: travelPages.length,
        //+ eventspages.length,
        itemBuilder: (BuildContext context, int index) {
          TravelPage travelPage = travelPages[index];
         // Eventspage eventspage = eventspages[index];

          return 
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => TravelScreen(travelPage: travelPage), 
                //EventsScreen(eventspage: eventspage),
              ),
            ),
            child: 
            Container(
              // margin: EdgeInsets.all(10.0),
              height: 170.0, 
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    height: 150.0,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 6.0),
                      ],
                    ),
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            height: 150.0,
                            width: MediaQuery.of(context).size.width,
                            image: AssetImage(travelPage.imageUrl),
                            // + eventspage.imageUrl),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Container(
                            height: 160.0,
                            color: Colors.black,
                          ),
                        ),
                        Positioned(
                          left: 15.0,
                          bottom: 30.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                travelPage.heading,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.radio_button_checked,
                                    size: 10.0,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    travelPage.description,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
         
        },
      ),
    );
  }
}


