import 'package:flutteritravelzw/itravel_main/heading_models_main/restaurant_model.dart';

class RestaurantDestination {
  final String imageUrl;
  final String city;
  final String description;
  final List<Restaurant> restaurants;

  RestaurantDestination({
    required this.imageUrl,
    required this.city,
    required this.description,
    required this.restaurants,
  });
}

final List<Restaurant> restaurants = [
  Restaurant(
    imageUrl: 'assets/images/trending/chop_chop.jpg',
    name: 'Chop Chop',
    type: 'Restaurant',
    location: 'Bulawayo',
    likes: '904',
  ),
];

final List<RestaurantDestination> restaurantDestinations = [
  RestaurantDestination(
    imageUrl: 'assets/images/destinations_zw/harare.jpg',
    city: 'Harare',
    description: 'Visit Harare, \'the city that never sleeps.\'',
    restaurants: restaurants,
  ),
  RestaurantDestination(
    imageUrl: 'assets/images/destinations_zw/bulawayo.jpg',
    city: 'Bulawayo',
    description: 'Visit Bulawayo, \'the city of kings.\'',
    restaurants: restaurants,
  ),
  RestaurantDestination(
    imageUrl: 'assets/images/destinations_zw/victoria_falls.jpg',
    city: 'Victoria Falls',
    description: 'Visit Victoria Falls, \'the smoke that thunders.\'',
    restaurants: restaurants,
  ),
  RestaurantDestination(
    imageUrl: 'assets/images/destinations_zw/kariba.jpg',
    city: 'Kariba',
    description: 'Visit Kariba, \'the trap!\'',
    restaurants: restaurants,
  ),
  RestaurantDestination(
    imageUrl: 'assets/images/destinations_zw/hwange.jpg',
    city: 'Hwange',
    description: 'Visit Hwange, \'catchphrase needed, lol.\'',
    restaurants: restaurants,
  ),
  RestaurantDestination(
    imageUrl: 'assets/images/destinations_zw/mutare.jpg',
    city: 'Mutare',
    description: 'Visit Mutare, \'catchphrase needed, lol.\'',
    restaurants: restaurants,
  ),
  RestaurantDestination(
    imageUrl: 'assets/images/destinations_zw/nyanga.jpg',
    city: 'Nyanga',
    description: 'Visit Nyanga, \'catchphrase needed, lol.\'',
    restaurants: restaurants,
  ),
  RestaurantDestination(
    imageUrl: 'assets/images/destinations_zw/chinhoyi.jpg',
    city: 'Chinhoyi',
    description: 'Visit Chinhoyi, \'catchphrase needed, lol.\'',
    restaurants: restaurants,
  ),
  RestaurantDestination(
    imageUrl: 'assets/images/destinations_zw/masvingo.jpg',
    city: 'Masvingo',
    description: 'Visit Masvingo, \'catchphrase needed, lol.\'',
    restaurants: restaurants,
  ),
  RestaurantDestination(
    imageUrl: 'assets/images/destinations_zw/midlands.jpg',
    city: 'Midlands',
    description: 'Visit Midlands, \'catchphrase needed, lol.\'',
    restaurants: restaurants,
  ),
  RestaurantDestination(
    imageUrl: 'assets/images/destinations_zw/matebeleland.jpg',
    city: 'Matebeleland',
    description: 'Visit Matebeleland, \'catchphrase needed, lol.\'',
    restaurants: restaurants,
  ),
  RestaurantDestination(
    imageUrl: 'assets/images/destinations_zw/mashonaland.jpg',
    city: 'Mashonaland',
    description: 'Visit Mashonaland, \'catchphrase needed, lol.\'',
    restaurants: restaurants,
  ),
  RestaurantDestination(
    imageUrl: 'assets/images/destinations_zw/manicaland.jpg',
    city: 'Manicaland',
    description: 'Visit Manicaland, \'catchphrase needed, lol.\'',
    restaurants: restaurants,
  ),
];