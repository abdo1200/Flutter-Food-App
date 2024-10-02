import 'package:app_theme/core/constant.dart';
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
          Text('Popular Food',style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: popular
                  .map(
                    (e) => InkWell(
                      onTap: () {},
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
                                Image.asset(
                                  imagePath + e['image'],
                                  width: width(context) * .4,
                                  height: height(context) * .2,
                                ),
                                Positioned(right: 0,child: Icon(Icons.favorite_outline))
                              ]),
                            ),
                            Text(
                              e['name'],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              e['cat'],
                              style: TextStyle(
                                fontSize: 15,
                               // fontWeight: FontWeight.bold
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                              "price: "+e['price']+"\$",
                              style: TextStyle(
                                fontSize: 15,
                               // fontWeight: FontWeight.bold
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Icon(Icons.add,color: Colors.white,),
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

List popular = [
  {"image": "burger.png", "name": "Hamburger", "cat": "Burger", "price": "200"},
  {
    "image": "pizza.png",
    "name": "Chicken Pizza",
    "cat": "Pizza",
    "price": "300"
  },
  {
    "image": "sandwich.png",
    "name": "Cheese Sandwich",
    "cat": "Sandwich",
    "price": "100"
  },
];
