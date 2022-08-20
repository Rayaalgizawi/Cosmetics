

import 'package:flutter/material.dart';

import '../../favorite/favorite_screen.dart';
import '../../home_screen/home_screen.dart';

import '../../notifications/notifications.dart';
import '../profile_screen.dart';
class MainContanainerBloc {final ValueNotifier<int> currentTabIndexNotifier = ValueNotifier<int>(0);

  List<Widget> navTabs = [
     Homescreen(),  
      ProfileScreen(),
    const  Favoritescreen(),
     const NotificatonScreen(),
  ];
  String title(int index, context) {
    switch (index) {
      case 0:
        return (context)!.bottom_tabbar_home;
      case 1:
          return(context)!.bottom_tabbar_profile; 
        
      case 2:
       return (context)!.bottom_tabbar_Favorite;
        case 3:
        return(context)!.bottom_tabbar_Notifications;
      default:
        return "";
    }
}

}
