import 'package:flutteritravelzw/itravel_main/heading_models_main/activity_model.dart';

class ActivityDestination {
  String imageUrl;
  String city;
  String description;
  List<Activity> activities;

  ActivityDestination({
    required this.imageUrl,
    required this.city,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/trending/great_zimbabwe.jpg',
    name: 'Great Zimbabwe Sight Seeing Tour',
    type: 'Activity',
    location: 'Masvingo',
    likes: '5\'002',
  ),
];

List<ActivityDestination> activityDestinations = [
  ActivityDestination(
    imageUrl: 'assets/images/destinations_zw/harare.jpg',
    city: 'Harare',
    description: 'Visit Harare, \'the city that never sleeps.\'',
    activities: activities,
  ),
  ActivityDestination(
    imageUrl: 'assets/images/destinations_zw/bulawayo.jpg',
    city: 'Bulawayo',
    description: 'Visit Bulawayo, \'the city of kings.\'',
    activities: activities,
  ),
  ActivityDestination(
    imageUrl: 'assets/images/destinations_zw/victoria_falls.jpg',
    city: 'Victoria Falls',
    description: 'Visit Victoria Falls, \'the smoke that thunders.\'',
    activities: activities,
  ),
  ActivityDestination(
    imageUrl: 'assets/images/destinations_zw/kariba.jpg',
    city: 'Kariba',
    description: 'Visit Kariba, \'the trap!\'',
    activities: activities,
  ),
  ActivityDestination(
    imageUrl: 'assets/images/destinations_zw/hwange.jpg',
    city: 'Hwange',
    description: 'Visit Hwange, \'catchphrase needed, lol.\'',
    activities: activities,
  ),
  ActivityDestination(
    imageUrl: 'assets/images/destinations_zw/mutare.jpg',
    city: 'Mutare',
    description: 'Visit Mutare, \'catchphrase needed, lol.\'',
    activities: activities,
  ),
  ActivityDestination(
    imageUrl: 'assets/images/destinations_zw/nyanga.jpg',
    city: 'Nyanga',
    description: 'Visit Nyanga, \'catchphrase needed, lol.\'',
    activities: activities,
  ),
  ActivityDestination(
    imageUrl: 'assets/images/destinations_zw/chinhoyi.jpg',
    city: 'Chinhoyi',
    description: 'Visit Chinhoyi, \'catchphrase needed, lol.\'',
    activities: activities,
  ),
  ActivityDestination(
    imageUrl: 'assets/images/destinations_zw/masvingo.jpg',
    city: 'Masvingo',
    description: 'Visit Masvingo, \'catchphrase needed, lol.\'',
    activities: activities,
  ),
  ActivityDestination(
    imageUrl: 'assets/images/destinations_zw/midlands.jpg',
    city: 'Midlands',
    description: 'Visit Midlands, \'catchphrase needed, lol.\'',
    activities: activities,
  ),
  ActivityDestination(
    imageUrl: 'assets/images/destinations_zw/matebeleland.jpg',
    city: 'Matebeleland',
    description: 'Visit Matebeleland, \'catchphrase needed, lol.\'',
    activities: activities,
  ),
  ActivityDestination(
    imageUrl: 'assets/images/destinations_zw/mashonaland.jpg',
    city: 'Mashonaland',
    description: 'Visit Mashonaland, \'catchphrase needed, lol.\'',
    activities: activities,
  ),
  ActivityDestination(
    imageUrl: 'assets/images/destinations_zw/manicaland.jpg',
    city: 'Manicaland',
    description: 'Visit Manicaland, \'catchphrase needed, lol.\'',
    activities: activities,
  ),
];
