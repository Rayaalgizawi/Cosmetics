import 'package:beauty_pariour2/shared_widget.dart/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/notifications/notifications.dart';
import '../screens/settings_screen.dart/setting_screen.dart';
import 'contact_buttomsheet.dart';

PreferredSizeWidget myCustomAppBar(BuildContext context, String title) {
  return AppBar(
    elevation: 0,
    automaticallyImplyLeading: false,
    backgroundColor: Colors.white,
    title: Row(
      children: [
        title == "home"
            ? Image.asset(
                "assets/images/logo.png",
                width: 50,
              )
            : CustomText(
                title: title,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontColor: Colors.black,
              ),
        Expanded(child: Container()),
      ],
    ),
    actions: [
      IconButton(
        onPressed: () => Get.to(() => const NotificatonScreen()),
        icon: const Icon(
          Icons.notifications,
          color: Colors.black,
        ),
      ),
      IconButton(
        onPressed: () async => await contactButtomSheet(context),
        icon: const Icon(
          Icons.contact_support,
          color: Colors.black,
        ),
      ),
      (title == "profile")
          ? IconButton(
              onPressed: () => Get.to(() => const SettingsScreen()),
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
            )
          : Container()
    ],
  );
}
