class ActivityPage {
  String imageUrl;
  String heading;
  String description;

  ActivityPage({
    required this.imageUrl,
    required this.heading,
    required this.description,
  });
}


List<ActivityPage> activityPages = [
   ActivityPage(
     imageUrl: 'assets/images/home_screen/activities.jpg',
    heading: 'Activities',
    description: 'Have an adventure...',
  ),
];
