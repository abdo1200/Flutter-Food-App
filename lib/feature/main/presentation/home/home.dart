// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app_theme/core/constant.dart';
import 'package:app_theme/feature/main/presentation/home/widgets/app_header.dart';
import 'package:app_theme/feature/main/presentation/home/widgets/categories_part.dart';
import 'package:app_theme/feature/main/presentation/home/widgets/popular_section.dart';
import 'package:app_theme/feature/main/presentation/home/widgets/search_area.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      height: height(context),
      color: const Color.fromARGB(255, 238, 238, 238),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              AppHeader(),
              SearchArea(),
              CategoriesPart(),
              PopularSection(),
              PopularSection(),
            ],
          ),
        ),
      ),
    );
  }
}
