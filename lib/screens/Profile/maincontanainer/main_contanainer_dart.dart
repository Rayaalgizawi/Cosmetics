import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'main_contanainer_bloc.dart';

class MainContanainerDart extends StatelessWidget {
   MainContanainerDart({Key? key}) : super(key: key);
final _bloc = MainContanainerBloc();
  @override
  Widget build(BuildContext context) {
    return  Scaffold (
      body: SafeArea(
      child: ValueListenableBuilder<int>(valueListenable: _bloc.currentTabIndexNotifier,
      builder: (context, data, child) {
        return IndexedStack(index: data,children: _bloc.navTabs,
        );}
      ),
      ),
       bottomNavigationBar:  ConvexAppBar(
              style:  TabStyle.flip,
            //  controller: controller,
              backgroundColor: Colors.pink,
              top: -20,
              height: 55,
              items:const [
                 TabItem(
                  icon:  Icons.home,title: 'Home'
                ),   TabItem(
                  icon: Icons.person,title: 'Profile'
                ),
                 TabItem(icon: Icons.favorite,title: 'Favorite'),
                 TabItem(icon: Icons.notification_add,title: 'notification'),
             
              ],initialActiveIndex: 0,onTap: ( (index) =>_bloc.currentTabIndexNotifier.value = index),
              ),
              );
     
       
    
  }
}
