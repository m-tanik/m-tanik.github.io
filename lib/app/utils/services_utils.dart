class ServicesUtils {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;

  ServicesUtils(
      {required this.name,
      required this.icon,
      required this.description,
      required this.tool});
}

List<ServicesUtils> servicesUtils = [
  ServicesUtils(
    name: 'Android App Development',
    icon: 'assets/icons/android.svg',
    description:
        "Are you interested in an Android app ? I will develop professional flutter app for android.",
    tool: ['Flutter', 'Complex UI','E-commerce', '2D Game', 'Complex and smooth \n60fps animation', 'Ad Integration', 'Frontend + Backend \ndevelopment',
    'Google maps', 'Firebase', 'In-App Purchase', 'API Integration', 'Publish the app on the play store'],
  ),
  ServicesUtils(
    name: 'iOS App Development',
    icon: 'assets/icons/apple.svg',
    description:
        "Are you interested in an iOS app ? I will develop professional flutter app for iOS.",
    tool: ['Flutter', 'Complex UI','E-commerce', '2D Game', 'Complex and smooth \n60fps animation','Ad Integration', 'Frontend + Backend \ndevelopment',
      'Google maps', 'Firebase', 'In-App Purchase', 'API Integration', 'Publish the app on the AppStore'],
  ),
  ServicesUtils(
    name: 'Data Science',
    icon: 'assets/icons/graphic.svg',
    description:
        "I'll Do your Data Science Project",
    tool: ['Machine Learning Model', 'Data Cleaning','Dashboard Desing', 'Data Visualization', 'Deep Learning and\nNeural Network Model'],
  ),
  // ServicesUtils(
  //   name: 'Web Development',
  //   icon: 'assets/icons/website.svg',
  //   description:
  //       "Do you have an idea for your next great website? Let's make it a reality.",
  //   tool: ['Flutter', 'Html,css,js', 'Android (Kotlin or Java)'],
  // ),
];
