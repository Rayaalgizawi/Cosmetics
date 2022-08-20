import 'package:beauty_pariour2/screens/home_screen/home_bloc.dart';
import 'package:beauty_pariour2/screens/home_screen/widgets/banne_rview.dart';
import 'package:beauty_pariour2/screens/home_screen/widgets/favorite.dart';
import 'package:beauty_pariour2/screens/home_screen/widgets/tutorials_banner.dart';
import 'package:flutter/material.dart';
import '../../shared_widget.dart/admob_banner.dart';
import 'widgets/home_category_view.dart';

class Homescreen extends StatelessWidget {
  Homescreen({Key? key}) : super(key: key);
  final bloc = Homebloc();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Homebannerview(),
              HomeCategoryView(listofcategoriesr: bloc.listofcategories),
              TutorialsBannerHomePage(),
              const SizedBox(height: 8),
              const AddMobBanner(),
              const SizedBox(height: 8),
              FavoriteHomePage(listOfFavorite: bloc.listFavoriteItems),
              const AddMobBanner(),
              const SizedBox(height: 8),
              const AddMobBanner(),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
