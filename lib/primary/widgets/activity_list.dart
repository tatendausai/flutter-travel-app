import 'package:flutter/material.dart';
//import 'package:flutteritravelzw/models/homepage_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:flutteritravelzw/screens/itravel_screen.dart';
import 'package:flutteritravelzw/primary/models/activity_page_model.dart';
import 'package:flutteritravelzw/itravel_main/screens_main/activity_screen.dart';

class ActivityList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        itemCount: activityPages.length,
        itemBuilder: (BuildContext context, int index) {
          ActivityPage activityPage = activityPages[index];

          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ActivityScreen(activityPage: activityPage),
              ),
            ),
            child: Container(
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
                            image: AssetImage(activityPage.imageUrl),
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
                                activityPage.heading,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  FaIcon(
                                    FontAwesomeIcons.circleDot,
                                    size: 10.0,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    activityPage.description,
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
