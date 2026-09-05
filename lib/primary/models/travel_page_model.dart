class TravelPage {
  final String imageUrl;
  final String heading;
  final String description;

  TravelPage({
    required this.imageUrl,
    required this.heading,
    required this.description,
  });
}

List<TravelPage> travelPages = [
  TravelPage(
    imageUrl: 'assets/images/home_screen/travel.jpg',
    heading: 'Travel',
    description: 'Modes of transport for your travels.',
  ),
];
