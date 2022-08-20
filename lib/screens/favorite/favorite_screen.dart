import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

class Favoritescreen extends StatefulWidget {
  const Favoritescreen({Key? key}) : super(key: key);

  @override
  State<Favoritescreen> createState() => _FavoritescreenState();
}

class _FavoritescreenState extends State<Favoritescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          child: Animator<double>(
            duration: Duration(milliseconds: 2000),
            cycles: 0,
            curve: Curves.easeInOut,
            tween: Tween<double>(begin: 0.0, end: 10.0),
            builder: (context, animatorState, child) => Column(
              children: [
                SizedBox(
                  height: animatorState.value * 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.withOpacity(.15),
                        blurRadius: 20,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 80,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
