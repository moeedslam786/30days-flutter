import 'package:flutter/material.dart';
import 'package:flutter_thirty_days/screens/widgets/custom_product.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        itemCount: productLists.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
        ),
        itemBuilder: (context, index) => ItemCard(
          product: productLists[index],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Product product;
  final Function? pres;
  const ItemCard({Key? key, this.pres, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // height: 298,
          // width: 190.0,
          decoration: BoxDecoration(
            color: product.color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Image.asset(
                product.image,
              ),
              Text(
                product.title,
                style: const TextStyle(),
              ),
              Text("\PKR  ${product.price}"),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ],
    );
  }
}
