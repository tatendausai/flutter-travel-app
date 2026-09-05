import 'package:flutter/material.dart';
import 'package:flutteritravelzw/itravel_main/screen_models_main/trending_model.dart';

class TrendingCarousel extends StatelessWidget {
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
                'Trending',
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
          height: 5.0,
        ),
        Container(
          height: 120.0,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: trendings.length,
            itemBuilder: (BuildContext context, int index) {
              Trending trending = trendings[index];
              return Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(30.0, 0.0, 5.0, 0.0),
                    height: 120.0,
                    width: 290.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(98.0, 5.0, 18.0, 5.0),
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
                                  trending.name,
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
                                child: Icon(
                                  Icons.save,
                                  size: 28.0,
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
                                trending.likes,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Theme.of(context).primaryColor,
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
                                trending.location,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.0),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                            child: Container(
                              width: double.infinity,
                              child: Text(
                                trending.type,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
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
                        width: 110.0,
                        image: AssetImage(trending.imageUrl),
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
