import 'package:flutter/material.dart';
import 'package:flutteritravelzw/final_screens/travel_final_screen.dart';
import 'package:flutteritravelzw/itravel_main/heading_models_main/travel_model.dart';
import 'package:flutteritravelzw/itravel_main/screen_models_main/travel_screen_model.dart';

class TravelSeeAll extends StatefulWidget {
  @override
  _TravelSeeAllState createState() => _TravelSeeAllState();
}

class _TravelSeeAllState extends State<TravelSeeAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView.builder(
        itemCount: travels.length,
        itemBuilder: (BuildContext context, int index) {
          Travel travel = travels[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => TravelFinalScreen(
                  travel: travel,
                ),
              ),
            ),
            child: ListTile(
              title: Text(
                travel.name,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                travel.location,
                overflow: TextOverflow.ellipsis,
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 30.0, 0.0),
              leading: Stack(
                children: <Widget>[
                  Container(
                    width: 55.0,
                    height: 55.0,
                    color: Colors.transparent,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(27.5),
                    child: Image(
                      width: 55.0,
                      height: 55.0,
                      image: AssetImage(travel.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              trailing: Icon(Icons.save, size: 30.0, color: Colors.amber),
              // trailing: Icon(
              //   alreadySaved ? Icons.favorite : Icons.favorite_border,
              //   color: alreadySaved ? Colors.red : null,
              // ),
              // onTap: () {
              //   setState(() {
              //     if (alreadySaved) {
              //       _saved.remove(pair);
              //     } else {
              //       _saved.add(pair);
              //     }
              //   });
              // },
            ),
          );
        },
      ),
    );
  }
}
