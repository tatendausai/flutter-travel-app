class RestaurantPage {
  final String imageUrl;
  final String heading;
  final String description;

  RestaurantPage({
    required this.imageUrl,
    required this.heading,
    required this.description,
  });
}

List<RestaurantPage> restaurantPages = [
  RestaurantPage(
    imageUrl: 'assets/images/home_screen/restaurants.jpg',
    heading: 'Restaurants',
    description: 'Fine dinning experiences await you!',
  ),
];
