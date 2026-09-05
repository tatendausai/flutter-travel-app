import 'package:flutteritravelzw/itravel_main/heading_models_main/hotel_model.dart';

class HotelDestination {
  String imageUrl;
  String city;
  String description;
  List<Hotel> hotels;

  HotelDestination({
    required this.imageUrl,
    required this.city,
    required this.description,
    required this.hotels,
  });
}

List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/trending/cresta_pasango.jpg',
    name: 'Cresta Pasango',
    type: 'Lodge',
    location: 'Harare',
    likes: '4\'171',
  ),
];

List<HotelDestination> hotelDestinations = [
  HotelDestination(
    imageUrl: 'assets/images/destinations_zw/harare.jpg',
    city: 'Harare',
    description: 'Visit Harare, \'the city that never sleeps.\'',
    hotels: hotels,
  ),
  HotelDestination(
    imageUrl: 'assets/images/destinations_zw/bulawayo.jpg',
    city: 'Bulawayo',
    description: 'Visit Bulawayo, \'the city of kings.\'',
    hotels: hotels,
  ),
  HotelDestination(
    imageUrl: 'assets/images/destinations_zw/victoria_falls.jpg',
    city: 'Victoria Falls',
    description: 'Visit Victoria Falls, \'the smoke that thunders.\'',
    hotels: hotels,
  ),
  HotelDestination(
    imageUrl: 'assets/images/destinations_zw/kariba.jpg',
    city: 'Kariba',
    description: 'Visit Kariba, \'the trap!\'',
    hotels: hotels,
  ),
  HotelDestination(
    imageUrl: 'assets/images/destinations_zw/hwange.jpg',
    city: 'Hwange',
    description: 'Visit Hwange, \'catchphrase needed, lol.\'',
    hotels: hotels,
  ),
  HotelDestination(
    imageUrl: 'assets/images/destinations_zw/mutare.jpg',
    city: 'Mutare',
    description: 'Visit Mutare, \'catchphrase needed, lol.\'',
    hotels: hotels,
  ),
  HotelDestination(
    imageUrl: 'assets/images/destinations_zw/nyanga.jpg',
    city: 'Nyanga',
    description: 'Visit Nyanga, \'catchphrase needed, lol.\'',
    hotels: hotels,
  ),
  HotelDestination(
    imageUrl: 'assets/images/destinations_zw/chinhoyi.jpg',
    city: 'Chinhoyi',
    description: 'Visit Chinhoyi, \'catchphrase needed, lol.\'',
    hotels: hotels,
  ),
  HotelDestination(
    imageUrl: 'assets/images/destinations_zw/masvingo.jpg',
    city: 'Masvingo',
    description: 'Visit Masvingo, \'catchphrase needed, lol.\'',
    hotels: hotels,
  ),
  HotelDestination(
    imageUrl: 'assets/images/destinations_zw/midlands.jpg',
    city: 'Midlands',
    description: 'Visit Midlands, \'catchphrase needed, lol.\'',
    hotels: hotels,
  ),
  HotelDestination(
    imageUrl: 'assets/images/destinations_zw/matebeleland.jpg',
    city: 'Matebeleland',
    description: 'Visit Matebeleland, \'catchphrase needed, lol.\'',
    hotels: hotels,
  ),
  HotelDestination(
    imageUrl: 'assets/images/destinations_zw/mashonaland.jpg',
    city: 'Mashonaland',
    description: 'Visit Mashonaland, \'catchphrase needed, lol.\'',
    hotels: hotels,
  ),
  HotelDestination(
    imageUrl: 'assets/images/destinations_zw/manicaland.jpg',
    city: 'Manicaland',
    description: 'Visit Manicaland, \'catchphrase needed, lol.\'',
    hotels: hotels,
  ),
];
