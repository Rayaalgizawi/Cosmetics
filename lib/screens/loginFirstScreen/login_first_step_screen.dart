import 'package:beauty_pariour2/screens/loginFirstScreen/loginFirstScreen_bloc.dart';
import 'package:beauty_pariour2/screens/loginFirstScreen/login_contact_view.dart';
import 'package:beauty_pariour2/screens/loginFirstScreen/widgets/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginFirstStepScreen extends StatefulWidget {
  const LoginFirstStepScreen({Key? key}) : super(key: key);

  @override
  State<LoginFirstStepScreen> createState() => _LoginFirstStepScreenState();
}

class _LoginFirstStepScreenState extends State<LoginFirstStepScreen> {
  final bloc = LoginFirstScreenBloc();

  @override
  void initState() {
    super.initState();
    print(" page is called");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SearchView(bloc: bloc),
          ContactView(bloc: bloc),
        ],
      ),
    );
  }
}
