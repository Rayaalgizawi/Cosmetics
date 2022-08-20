
import 'package:flutter/material.dart';

import 'bloc_cartscreen.dart';

class Cartscreen extends StatelessWidget {
     Cartscreen ({Key? key}) : super(key: key);
final bloc = Cartscreenbloc();
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(" Cartscreen "),
      ),
    );
    
  }
}