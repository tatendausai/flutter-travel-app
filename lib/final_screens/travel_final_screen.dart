import 'package:flutter/material.dart';
import 'package:flutteritravelzw/itravel_main/heading_models_main/travel_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TravelFinalScreen extends StatefulWidget {
  final Travel travel;

  const TravelFinalScreen({super.key, required this.travel});

  @override
  State<TravelFinalScreen> createState() => _TravelFinalScreenState();
}

class _TravelFinalScreenState extends State<TravelFinalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Center(
          child: Text('itravel.zw'),
        ),
        actions: const <Widget>[
          IconButton(
            icon: Icon(
              Icons.list,
              color: Colors.white,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 300.0,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Hero(
                  tag: widget.travel.imageUrl,
                  child: ClipRRect(
                    child: Image(
                      image: AssetImage(widget.travel.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 30.0,
                bottom: 5.0,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      iconSize: 20.0,
                      color: Colors.white,
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
              const Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
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
          Stack(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                height: 330.0,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                height: 330.0,
                color: Colors.white,
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  widget.travel.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(
                                widget.travel.location,
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14.0,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            const Center(
                              child: Icon(
                                Icons.save,
                                size: 30.0,
                                color: Colors.amber,
                              ),
                            ),
                            const SizedBox(height: 5.0),
                            Center(
                              child: Text(
                                widget.travel.likes,
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).primaryColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.call,
                              color: Theme.of(context).primaryColor),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: Text(
                              'CALL',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.near_me,
                              color: Theme.of(context).primaryColor),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: Text(
                              'ROUTE',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.language,
                              color: Theme.of(context).primaryColor),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: Text(
                              'INFO',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.share,
                              color: Theme.of(context).primaryColor),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: Text(
                              'SHARE',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32),
                    child: Text(
                      widget.travel.description,
                      maxLines: 9,
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}