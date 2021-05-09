import 'package:flutter/material.dart';
import 'package:habitue_app/src/components/product_card.dart';
import 'package:habitue_app/src/models/Product.dart';

import '../../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Productos populares", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(product: demoProducts[index]);

                  return SizedBox.shrink();
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
