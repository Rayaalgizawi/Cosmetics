
import 'package:beauty_pariour2/screens/Profile/profile_header_view.dart';
import 'package:flutter/material.dart';

import '../../shared_widget.dart/option_view.dart';
import '../home_screen/widgets/follow_us_view.dart';
import 'Profile_bloc.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  var bloc = ProfileBloc();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileHeaderView(),
            OptionView(list: bloc.list1),
            OptionView(list: bloc.list2),
            OptionView(list: bloc.list3),
            const FollowUsView(),
          ],
        ),
      ),
    );
  }
}
