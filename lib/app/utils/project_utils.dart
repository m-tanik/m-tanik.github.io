class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'assets/imgs/astro.png',
    icons: 'assets/imgs/astro_icon.webp',
    titles: 'Talking Planets: Astronomy App',
    description:
        'This interactive astronomy learning application won the International Astronomical Union\'s Office of Astronomy for Development Grant Award. With our application, users can chat and talk with the different planet like characters in a fun and entertaining way. These planets will act like chatbots. They will answer your questions in a fun way. You can ask about their mood, name etc. You can also ask for basic information, such as their size, mass, temperature, orbital period etc. Voice chat is also possible.',
    links: 'https://play.google.com/store/apps/details?id=app.talking.planets',
  ),
  ProjectUtils(
    banners: 'assets/imgs/scale.PNG',
    icons: 'assets/imgs/scale_icon.webp',
    titles: 'Scale Restaurant',
    description:
        'Food delivery service that’s perfectly measured and uses only top-quality ingredients.',
    links: 'https://apps.apple.com/gb/app/scale-restaurant/id1583414026',
  ),
  ProjectUtils(
    banners: 'assets/imgs/heintges.png',
    icons: 'assets/imgs/heintges_icon.png',
    titles: 'Lernkarten Jagd',
    description:
        'Prepare quickly and efficiently for the hunter\'s exam. Topics that you need to know as a prospective hunter are covered in this flashcard app, such as wildlife science, hunting dogs, protected species. The front of the map shows a meaningful nature shot (e.g. B. red deer), the back contains examination-relevant knowledge such as habitat, lifestyle, size, reproduction, special features and much more.',
    links: 'https://apps.apple.com/gb/app/lernkarten-jagd/id1600091122',
  ),
  ProjectUtils(
    banners: 'assets/imgs/immovaria.jpg',
    icons: 'assets/imgs/immovaria_icon.png',
    titles: 'Immovaria',
    description:
        'IMMOVARIA is a German company. They work on development of apartments in Many German cities. They have a website that include all the information their customer needed. Our task was to convert this website to a mobile application. We have developed the front end of the app using Flutter and dart. And we also created an API using Laravel to fetch the required data from their database. Development of the app is completed but some modification is ongoing. we will launch this app in Google Play store and IOS app store very soon.',
    links: 'https://immovaria.net/',
  ),
];
