import 'package:app_theme/feature/main/domain/entities/food_model.dart';
import 'package:flutter/material.dart';

class DetialsContent extends StatelessWidget {
  final FoodModel foodModel;
  const DetialsContent({super.key, required this.foodModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                foodModel.name,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                foodModel.price.toString() + "\$",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.red),
              ),
            ],
          ),
          Text(
            foodModel.category,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(height: 15),
          Row(
            children: [
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Details",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(width: 10),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Theme.of(context).unselectedWidgetColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Reviews",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Text(
            foodModel.description,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Spacer(),
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Theme.of(context).unselectedWidgetColor,
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                          child: Icon(Icons.add)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text("1"),
                      ),
                      Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                          child: Icon(Icons.remove)),
                    ],
                  ),
                ),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Add To Cart",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
