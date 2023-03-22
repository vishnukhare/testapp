class Category {
  final String icon, title;

  Category({required this.icon, required this.title});
}

List<Category> demo_categories = [
  Category(
    icon: "assets/icons/infinity..png",
    title: "All Categories",
  ),
  Category(
    icon: "assets/icons/man.png",
    title: "Man",
  ),
  Category(
    icon: "assets/icons/businesswoman.png",
    title: "Woman",
  ),
  Category(
    icon: "assets/icons/son.png",
    title: "Kids",
  ),
];


class Size {
  final String titl;

  Size({required this.titl});
}

List<Size> demo_size = [
  Size(titl: "S",),
  Size(titl: "M",),
  Size(titl: "L",),
  Size(titl: "XL"),
  Size(titl: "XXL"),
];