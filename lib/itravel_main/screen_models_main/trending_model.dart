class Trending {
  final String imageUrl;
  final String name;
  final String type;
  final String location;
  final String likes;

  Trending({
    required this.imageUrl,
    required this.name,
    required this.type,
    required this.location,
    required this.likes,
  });
}

List<Trending> trendings = [
  Trending(
    imageUrl: 'assets/images/trending/great_zimbabwe.jpg',
    name: 'Great Zimbabwe Sight Seeing Tour',
    type: 'Activity',
    location: 'Masvingo',
    likes: '5\'002',
  ),
  Trending(
    imageUrl: 'assets/images/trending/cresta_pasango.jpg',
    name: 'Cresta Pasango',
    type: 'Lodge',
    location: 'Harare',
    likes: '4\'171',
  ),
  Trending(
    imageUrl: 'assets/images/trending/chop_chop.jpg',
    name: 'Chop Chop',
    type: 'Restaurant',
    location: 'Bulawayo',
    likes: '904',
  ),
  Trending(
    imageUrl: 'assets/images/trending/zupco.jpg',
    name: 'Zupco Buses',
    type: 'Travel',
    location: 'Mutare',
    likes: '15\'416',
  ),
];