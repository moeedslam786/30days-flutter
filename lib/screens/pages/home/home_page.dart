import 'package:flutter/material.dart';
import 'package:flutter_thirty_days/globals/app_assests.dart';
import 'package:flutter_thirty_days/globals/app_colors.dart';
import 'package:flutter_thirty_days/globals/app_strings.dart';
import 'package:flutter_thirty_days/screens/widgets/category_list.dart';
import 'package:flutter_thirty_days/screens/widgets/item_list.dart';
import 'package:flutter_thirty_days/screens/widgets/product_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.welcome,
          style: TextStyle(color: AppColors.textColor),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productLists.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: CategoryList(title: productLists[index].title),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 2),
              itemCount: productLists.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage(AppAssets.signIn),
                      maxRadius: 16,
                    ),
                    title: Text(productLists[index].title),
                    subtitle: Text(productLists[index].description),
                    trailing: Text(productLists[index].price.toString()),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
