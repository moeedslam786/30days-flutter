import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_thirty_days/globals/app_colors.dart';
import 'package:flutter_thirty_days/screens/widgets/custom_product.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: GridView.builder(
        itemCount: productLists.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          mainAxisExtent: 200.0,
          crossAxisSpacing: 10.0,
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
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(
            product.image,
            height: 130,
            width: 130,
          ),
        ),
        Text(
          product.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text("\$${product.price}")
      ],
    );
  }
}
