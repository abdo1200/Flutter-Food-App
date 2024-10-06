import 'package:app_theme/core/constant.dart';
import 'package:app_theme/feature/main/domain/entities/food_model.dart';
import 'package:app_theme/feature/main/presentation/details_page/details_page.dart';
import 'package:flutter/material.dart';

class PopularSection extends StatelessWidget {
  const PopularSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular Food',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: popular
                  .map(
                    (e) => InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                food: FoodModel(
                                    category: e.category,
                                    name: e.name,
                                    image: e.image,
                                    description: e.description,
                                    price: e.price),
                              ),
                            ));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        width: 200,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Theme.of(context).unselectedWidgetColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 200,
                              child: Stack(children: [
                                Hero(
                                  tag: e.image,
                                  child: Image.asset(
                                    imagePath + e.image,
                                    width: width(context) * .4,
                                    height: height(context) * .2,
                                  ),
                                ),
                                Positioned(
                                    right: 0,
                                    child: Icon(Icons.favorite_outline))
                              ]),
                            ),
                            Text(
                              e.name,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              e.category,
                              style: TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.bold
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "price: " + e.price.toString() + "\$",
                                  style: TextStyle(
                                    fontSize: 15,
                                    // fontWeight: FontWeight.bold
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

List<FoodModel> popular = [
  FoodModel(
      name: "Hamburger",
      category: "Burger",
      image: "burger.png",
      description: "hamburger served with two buns",
      price: 200.0),
  FoodModel(
      name: "Chicken Pizza",
      category: "Pizza",
      image: "pizza.png",
      description: "hamburger served with two buns",
      price: 200.0),
  FoodModel(
      name: "Cheese Sandwich",
      category: "Sandwich",
      image: "sandwich.png",
      description: "hamburger served with two buns",
      price: 200.0),
];
