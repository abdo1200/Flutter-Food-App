import 'package:app_theme/core/constant.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

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
              Image.asset(
                imagePath + "person.png",
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              const Icon(
                Icons.notifications_none_outlined,
                size: 30,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
           Text(
            "Choose",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          RichText(
              text: const TextSpan(children: [
            TextSpan(
              text: "Your Favourite",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            TextSpan(
              text: " Food",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red),
            )
          ]))
        ],
      ),
    );
  }
}
