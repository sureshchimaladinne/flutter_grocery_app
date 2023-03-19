class OnboardingScreen{
  String image;
  String title;
  String discription;

  OnboardingScreen({required this.image, required this.title, required this.discription});
}

List<OnboardingScreen> contents = [
  OnboardingScreen(
      title: 'Quality Food',
      image: 'assets/images/all_grocery.png',
      discription: "Welcome to best online grocery store. Here you will find all the groceries at one place."
  ),
  OnboardingScreen(
      title: 'Fast Delevery',
      image: 'assets/images/delivery.png',
      discription:"Buy farm fresh fruits & vegetables online at the best & affordable prices.",
  ),
  OnboardingScreen(
      title: 'Reward surprises',
      image: 'assets/images/grocery.png',
      discription: "We offers speedy delivery of your groceries, bathroom supplies, .",
  ),
];