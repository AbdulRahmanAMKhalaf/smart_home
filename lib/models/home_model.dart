class HomeModel{
  String name;
  String image;

  HomeModel({required this.name,required this.image});
}
List<HomeModel>homeList=[
  HomeModel(
      name:'LIVINGROOM',
      image: 'Assets/images/living.jpg'),
  HomeModel(
      name: 'KITCHEN',
      image: 'Assets/images/kichen.jpg'),
  HomeModel(
      name: 'BATHROOM',
      image: 'Assets/images/bath.jpg'),
  HomeModel(
      name: 'BEDROOM',
      image: 'Assets/images/bed.jpg'),
  HomeModel(
      name: 'DINNERROOM',
      image: 'Assets/images/dinner.jpg'),
];