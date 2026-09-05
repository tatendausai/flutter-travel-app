import 'package:flutteritravelzw/itravel_main/heading_models_main/travel_model.dart';

class TravelDestination {
  String imageUrl;
  String city;
  String description;
  List<Travel> travels;

  TravelDestination({
    required this.imageUrl,
    required this.city,
    required this.description,
    required this.travels,
  });
}

List<Travel> travels = [
  Travel(
    imageUrl: 'assets/images/trending/zupco.jpg',
    name: 'Zupco Buses',
    type: 'Travel',
    location: 'Mutare',
    likes: '10\'301',  
    headliner: 'The cheapest transport provider across the entire nation.',
    description: 'Zupco buses provide the cheapest transport accross the entire nation. Our services are available in every city, town or even rural areas in Zimbabwe. To view our scheduling you can proceed to our website using the \'INFO\' button.',
  ),
  Travel(
    imageUrl: 'assets/images/trending/zupco.jpg',
    name: 'Zupco Buses',
    type: 'Travel',
    location: 'Plumtree',
    likes: '3\'055',  
    headliner: 'The cheapest transport provider across the entire nation.',
    description: 'Zupco buses provide the cheapest transport accross the entire nation. Our services are available in every city, town or even rural areas in Zimbabwe. To view our scheduling you can proceed to our website using the \'INFO\' button.',
  ),
  Travel(
    imageUrl: 'assets/images/trending/zupco.jpg',
    name: 'Zupco Buses',
    type: 'Travel',
    location: 'Chipinge',
    likes: '15\'416',  
    headliner: 'The cheapest transport provider across the entire nation.',
    description: 'Zupco buses provide the cheapest transport accross the entire nation. Our services are available in every city, town or even rural areas in Zimbabwe. To view our scheduling you can proceed to our website using the \'INFO\' button.',
  ),
  Travel(
    imageUrl: 'assets/images/trending/zupco.jpg',
    name: 'Zupco Buses',
    type: 'Travel',
    location: 'Kadoma',
    likes: '7\'918',  
    headliner: 'The cheapest transport provider across the entire nation.',
    description: 'Zupco buses provide the cheapest transport accross the entire nation. Our services are available in every city, town or even rural areas in Zimbabwe. To view our scheduling you can proceed to our website using the \'INFO\' button.',
  ),
  Travel(
    imageUrl: 'assets/images/trending/zupco.jpg',
    name: 'Zupco Buses',
    type: 'Bindura',
    location: 'Chipinge',
    likes: '15\'416',  
    headliner: 'The cheapest transport provider across the entire nation.',
    description: 'Zupco buses provide the cheapest transport accross the entire nation. Our services are available in every city, town or even rural areas in Zimbabwe. To view our scheduling you can proceed to our website using the \'INFO\' button.',
  ),
];

List<TravelDestination> travelDestinations = [
  TravelDestination(
    imageUrl: 'assets/images/destinations_zw/harare.jpg',
    city: 'Harare',
    description: 'Visit Harare, \'the city that never sleeps.\'',
    travels: travels,
  ),
  TravelDestination(
    imageUrl: 'assets/images/destinations_zw/bulawayo.jpg',
    city: 'Bulawayo',
    description: 'Visit Bulawayo, \'the city of kings.\'',
    travels: travels,
  ),
  TravelDestination(
    imageUrl: 'assets/images/destinations_zw/victoria_falls.jpg',
    city: 'Victoria Falls',
    description: 'Visit Victoria Falls, \'the smoke that thunders.\'',
    travels: travels,
  ),
  TravelDestination(
    imageUrl: 'assets/images/destinations_zw/kariba.jpg',
    city: 'Kariba',
    description: 'Visit Kariba, \'the trap!\'',
    travels: travels,
  ),
  TravelDestination(
    imageUrl: 'assets/images/destinations_zw/hwange.jpg',
    city: 'Hwange',
    description: 'Visit Hwange, \'catchphrase needed, lol.\'',
    travels: travels,
  ),
  TravelDestination(
    imageUrl: 'assets/images/destinations_zw/mutare.jpg',
    city: 'Mutare',
    description: 'Visit Mutare, \'catchphrase needed, lol.\'',
    travels: travels,
  ),
  TravelDestination(
    imageUrl: 'assets/images/destinations_zw/nyanga.jpg',
    city: 'Nyanga',
    description: 'Visit Nyanga, \'catchphrase needed, lol.\'',
    travels: travels,
  ),
  TravelDestination(
    imageUrl: 'assets/images/destinations_zw/chinhoyi.jpg',
    city: 'Chinhoyi',
    description: 'Visit Chinhoyi, \'catchphrase needed, lol.\'',
    travels: travels,
  ),
  TravelDestination(
    imageUrl: 'assets/images/destinations_zw/masvingo.jpg',
    city: 'Masvingo',
    description: 'Visit Masvingo, \'catchphrase needed, lol.\'',
    travels: travels,
  ),
  TravelDestination(
    imageUrl: 'assets/images/destinations_zw/midlands.jpg',
    city: 'Midlands',
    description: 'Visit Midlands, \'catchphrase needed, lol.\'',
    travels: travels,
  ),
  TravelDestination(
    imageUrl: 'assets/images/destinations_zw/matebeleland.jpg',
    city: 'Matebeleland',
    description: 'Visit Matebeleland, \'catchphrase needed, lol.\'',
    travels: travels,
  ),
  TravelDestination(
    imageUrl: 'assets/images/destinations_zw/mashonaland.jpg',
    city: 'Mashonaland',
    description: 'Visit Mashonaland, \'catchphrase needed, lol.\'',
    travels: travels,
  ),
  TravelDestination(
    imageUrl: 'assets/images/destinations_zw/manicaland.jpg',
    city: 'Manicaland',
    description: 'Visit Manicaland, \'catchphrase needed, lol.\'',
    travels: travels,
  ),
];
