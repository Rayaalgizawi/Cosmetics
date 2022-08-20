import 'package:beauty_pariour2/screens/loginFirstScreen/loginFirstScreen_bloc.dart';
import 'package:flutter/material.dart';
class SearchView extends StatelessWidget {
final LoginFirstScreenBloc bloc;
   SearchView({required this.bloc   , Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: const Text("Cosmetics"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'search',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.shop),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ], //<Widget>[]
        backgroundColor: Color.fromARGB(206, 239, 114, 206),
        elevation: 50.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),

      ); //AppBar
      
        
      
  
  }
}
