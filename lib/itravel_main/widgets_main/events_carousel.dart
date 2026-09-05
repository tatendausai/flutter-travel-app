import 'package:flutter/material.dart';
import 'package:flutteritravelzw/itravel_main/screen_models_main/events_model.dart';

class EventsCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Events',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () => print('See All'),
                child: Text(
                  'See All',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: 170.0,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: events.length,
            itemBuilder: (BuildContext context, int index) {
              Event event = events[index];
              return Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(70.0, 0.0, 5.0, 0.0),
                    height: 170.0,
                    width: 290.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(90.0, 5.0, 20.0, 5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 140.0,
                                child: Text(
                                  event.name,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.5,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                              Container(
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                event.likes,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                size: 15.0,
                                color: Colors.redAccent,
                              ),
                              SizedBox(width: 5.0),
                              Text(
                                event.location,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(Icons.date_range,
                                  color: Colors.black54,
                                  size: 14.0,),
                                  SizedBox(width: 4.0),
                                  Text(
                                    event.date,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 5.0),
                          Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(2.0),
                                width: 65.0,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.secondary,
                                  borderRadius: BorderRadius.circular(7.0),
                                ),
                                child: Center(
                                  child: Text(
                                    event.time[0], style: TextStyle(fontSize: 14.0, color: Colors.black,),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.0),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                width: 65.0,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.secondary,
                                  borderRadius: BorderRadius.circular(7.0),
                                ),
                                child: Center(
                                  child: Text(
                                    event.time[1], style: TextStyle(fontSize: 14.0, color: Colors.black,),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10.0,
                    top: 0.0,
                    bottom: 0.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(
                        width: 140.0,
                        image: AssetImage(event.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
