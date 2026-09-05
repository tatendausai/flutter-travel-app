class HotelPage {
  final String imageUrl;
  final String heading;
  final String description;

  HotelPage({
    required this.imageUrl,
    required this.heading,
    required this.description,
  });
}

List<HotelPage> hotelPages = [
  HotelPage(
    imageUrl: 'assets/images/home_screen/hotels.jpg',
    heading: 'Hotels & Lodges',
    description: 'Places to stay when you travel.',
  ),
];
