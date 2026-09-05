class Event {
  final String imageUrl;
  final String name;
  final String type;
  final String location;
  final String likes;
  final List<String> time;
  final String date;

  const Event({
    required this.imageUrl,
    required this.name,
    required this.type,
    required this.location,
    required this.likes,
    required this.time,
    required this.date,
  });
}

List<Event> events = [
  Event(
    imageUrl: 'assets/images/events/chirorodziva.jpg',
    name: 'Chirorodziva Calabash',
    type: 'event',
    location: 'Chinhoyi',
    likes: '3\'400',
    date: '5 Oct - 7 Oct',
    time: ['9:00 am', '10:00 pm'],
  ),
  Event(
    imageUrl: 'assets/images/events/dabomb.jpg',
    name: 'DaBomb Conference',
    type: 'event',
    location: 'Harare',
    likes: '7\'802',
    date: '6 Dec - 12 Dec',
    time: ['7:00 am', '8:00 pm'],
  ),
  Event(
    imageUrl: 'assets/images/events/cricket.jpg',
    name: 'Cricket Zim vs Sri Lanka',
    type: 'event',
    location: 'Harare',
    likes: '5\'002',
    date: '18 Aug',
    time: ['9:00 am', '4:00 pm'],
  ),
  Event(
    imageUrl: 'assets/images/events/ballet.jpg',
    name: 'Ballerina Extrodinare',
    type: 'event',
    location: 'Gweru',
    likes: '5\'002',
    date: '13 Sept',
    time: ['6:00 pm', '9:00 pm'],
  ),
];