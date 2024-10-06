import 'package:app_theme/core/constant.dart';
import 'package:flutter/material.dart';

class DetailsHeader extends StatelessWidget {
  final String image;
  const DetailsHeader({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width(context),
          height: height(context) * .45,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(150),
                bottomRight: Radius.circular(150),
              )),
        ),
        SizedBox(
          width: width(context),
          height: height(context) * .6,
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(onTap: (){
                        Navigator.pop(context);
                      },child: Icon(Icons.arrow_back, size: 30)),
                      Icon(Icons.menu, size: 30),
                    ],
                  ),
                ),
                Spacer(),
                Hero(tag: image, child: Image.asset(imagePath+image))
              ],
            ),
          ),
        )
      ],
    );
  }
}
