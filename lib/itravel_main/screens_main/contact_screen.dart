import 'package:flutter/material.dart';
import 'package:flutteritravelzw/primary/models/contact_page_model.dart';
//import 'package:hexcolor/hexcolor.dart';

class ContactScreen extends StatefulWidget {

  final ContactPage contactPage;

 ContactScreen({required this.contactPage});
  @override
  _ContactScreen createState() => _ContactScreen();
}

class _ContactScreen extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf0b572),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Center(
          child: Text('itravel.zw'),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.list,
                color: Colors.white,
              ),
              onPressed: null),
        ],
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 300.0,
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
                  child: ClipRRect(
                    //borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      image: AssetImage('assets/images/logos/brown_recluse.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                padding: EdgeInsets.all(20.0),
                width: double.infinity,
                height: 330.0,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(20.0),
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
                margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                padding: EdgeInsets.all(20.0),
                width: double.infinity,
                height: 330.0,
                color: Color(0xFF3a2b2e),
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Row(
                      children: [
                        Expanded(
                          /*1*/
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /*2*/
                              Container(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Center(
                                  child: Text(
                                    'Brown Reclusive (Pvt) Ltd',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                              color:  Color(0xFFf0b572),),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: Text(
                              'CALL',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color:  Color(0xFFf0b572),
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
                              color:  Color(0xFFf0b572),),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: Text(
                              'ROUTE',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color:  Color(0xFFf0b572),
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
                              color:  Color(0xFFf0b572),),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: Text(
                              'INFO',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color:  Color(0xFFf0b572),
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
                              color:  Color(0xFFf0b572),),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: Text(
                              'SHARE',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color:  Color(0xFFf0b572),
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
                      'THis is the page that users will use to get in contact. I will later replace that logo with the itravel logo when its finished. But for now this will have to do, we can settle for this. Just so we see how this page will look when it is completed. But I will leave the company name there so that users know therzan association.',
                      maxLines: 9,
                      softWrap: true,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
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
