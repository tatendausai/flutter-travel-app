class EventsPage {
  final String imageUrl;
  final String heading;
  final String description;

  const EventsPage({
    required this.imageUrl,
    required this.heading,
    required this.description,
  });
}

List<EventsPage> eventsPages = [
  const EventsPage(
    imageUrl: 'assets/images/home_screen/events.jpg',
    heading: 'Events',
    description: 'Shows and events across Zimbabwe.',
  ),
];
