class ProductList {
  final int id, price;
  final String title, description, image;

  ProductList({
    required this.id,
    required this.price,
    required this.title,
    required this.description,
    required this.image,
  });
}

// list of ProductLists
// for our demo
List<ProductList> productLists = [
  ProductList(
    id: 1,
    price: 56,
    title: "Classic Leather Arm Chair",
    image: "assets/images/Item_1.png",
    description: "Lorem ipsum dolor sit amet, con",
  ),
  ProductList(
    id: 4,
    price: 68,
    title: "Poppy Plastic Tub Chair",
    image: "assets/images/Item_2.png",
    description: "Lorem ipsum dolor sit amet, con",
  ),
  ProductList(
    id: 9,
    price: 39,
    title: "Bar Stool Chair",
    image: "assets/images/Item_3.png",
    description: "Lorem ipsum dolor sit amet, con",
  ),
];
