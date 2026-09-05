import 'package:flutter/material.dart';
import 'package:flutteritravelzw/itravel_main/screens_main/activity_screen.dart';
import 'package:flutteritravelzw/itravel_main/screens_main/hotel_screen.dart';
import 'package:flutteritravelzw/itravel_main/screens_main/restaurant_screen.dart';
import 'package:flutteritravelzw/itravel_main/widgets_main/destination_carousel_travel.dart';
import 'package:flutteritravelzw/itravel_main/widgets_main/events_carousel.dart';
import 'package:flutteritravelzw/itravel_main/widgets_main/travel_carousel.dart';
import 'package:flutteritravelzw/itravel_main/widgets_main/trending_carousel.dart';
import 'package:flutteritravelzw/primary/models/hotel_page_model.dart';
import 'package:flutteritravelzw/primary/models/activity_page_model.dart';
import 'package:flutteritravelzw/primary/models/restaurant_page_model.dart';
import 'package:flutteritravelzw/primary/models/hotel_page_model.dart';
import 'package:flutteritravelzw/primary/models/activity_page_model.dart';
import 'package:flutteritravelzw/primary/models/restaurant_page_model.dart';
import 'package:flutteritravelzw/primary/models/travel_page_model.dart';
import 'package:flutteritravelzw/primary/screens/home_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TravelScreen extends StatefulWidget {
  final TravelPage? travelPage;

  const TravelScreen({super.key, this.travelPage});

  @override
  State<TravelScreen> createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;

  final List<FaIconData> _icons = const [
    FontAwesomeIcons.car,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.personHiking,
    FontAwesomeIcons.utensils,
  ];

    late final List<Widget> _routes = [
    TravelScreen(travelPage: widget.travelPage ?? travelPages[0]),
    HotelScreen(hotelPage: hotelPages[0]),
    ActivityScreen(activityPage: activityPages[0]),
    RestaurantScreen(restaurantPage: restaurantPages[0]),
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        debugPrint('$_selectedIndex');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => _routes[index],
          ),
        );
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).colorScheme.secondary
              : const Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: FaIcon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : const Color(0xFFB1C1C4),
        ),
      ),
    );
  }

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
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 0),
              child: Text(
                'Find safe and reliable transport',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _buildIcon(0),
                _buildIcon(1),
                _buildIcon(2),
                _buildIcon(3),
              ],
            ),
            const SizedBox(height: 20.0),
            TrendingCarousel(),
            const SizedBox(height: 25.0),
            DestinationCarouselTravel(),
            const SizedBox(height: 5.0),
            TravelCarousel(),
            const SizedBox(height: 10.0),
            EventsCarousel(),
          ],
        ),
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
            icon: GestureDetector(
              onTap: null,
              child: const Icon(
                Icons.search,
                size: 30.0,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => HomeScreen(),
                ),
              ),
              child: const Icon(
                Icons.home,
                size: 30.0,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: null,
              child: const Icon(
                Icons.person_outline,
                size: 30.0,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}