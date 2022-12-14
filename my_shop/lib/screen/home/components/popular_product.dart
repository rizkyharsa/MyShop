import 'package:flutter/material.dart';
import 'package:my_shop/constant.dart';
import 'package:my_shop/data/item.dart';
import 'package:my_shop/screen/home/components/product_card.dart';
import 'package:my_shop/screen/home/components/title.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: SecTitle(
            title: 'Popular',
            seeAll: () {},
          ),
        ),
        SingleChildScrollView(
          physics:
              const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              listItem.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: ProductCard(
                  name: listItem[index].name,
                  price: listItem[index].price,
                  imageUrl: listItem[index].imageUrl,
                  bgColor: listItem[index].bgColor,
                  press: (){},
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}



    // return Scaffold(
    //   body: Container(
    //     padding: const EdgeInsets.all(10),
    //     child: GridView.builder(
    //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //         crossAxisCount: 2,
    //         crossAxisSpacing: 8,
    //         mainAxisSpacing: 8,
    //         childAspectRatio: 0.7,
    //       ),
    //       itemBuilder: (context, index) {
    //         return ProductCard(
    //           name: listItem[index].name,
    //           price: listItem[index].price,
    //           imageUrl: listItem[index].imageUrl,
    //           bgColor: listItem[index].bgColor,
    //           press: () {},
    //         );
    //       },
    //       itemCount: listItem.length,
    //     ),
    //   ),
    // );