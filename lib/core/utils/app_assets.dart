class AppAssets {
  static Images images = const Images();
  static Lotties lotties = const Lotties();
  static IconsInAssets icons = const IconsInAssets();
}

class Images {
  const Images();

  String get splash => "assets/splash.png";
}

class IconsInAssets {
  const IconsInAssets();

}

class Lotties {
  const Lotties();

  String get loading => "assets/lottie/loading.json";

  String get loadingGreen => "assets/lottie/loading_green.json";
}
