class ContactPage {
  final String imageUrl;
  final String heading;
  final String description;

  ContactPage({
    required this.imageUrl,
    required this.heading,
    required this.description,
  });
}

List<ContactPage> contactPages = [
  ContactPage(
    imageUrl: 'assets/images/home_screen/contact.jpg',
    heading: 'Contact Us',
    description: 'Add your business to this app!',
  ),
];