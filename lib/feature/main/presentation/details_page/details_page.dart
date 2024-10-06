import 'package:app_theme/core/constant.dart';
import 'package:app_theme/feature/main/domain/entities/food_model.dart';
import 'package:app_theme/feature/main/presentation/details_page/widgets/details_header.dart';
import 'package:app_theme/feature/main/presentation/details_page/widgets/detials_content.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final FoodModel food;
  const DetailsPage({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         DetailsHeader(image: food.image,),
         Expanded(child: DetialsContent(foodModel: food,))
        ],
      ),
    );
  }
}
