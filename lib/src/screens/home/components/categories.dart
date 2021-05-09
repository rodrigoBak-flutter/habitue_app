import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Pizza"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Hamburguesas"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Cerveza"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Empanadas"},
      {"icon": "assets/icons/Discover.svg", "text": "Ver mas"},
    ];
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {
              print('hola');
            },
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(60),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(75),
              width: getProportionateScreenWidth(75),
              decoration: BoxDecoration(
                color: Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon),
            ),
            SizedBox(height: 6),
            Text(text, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
