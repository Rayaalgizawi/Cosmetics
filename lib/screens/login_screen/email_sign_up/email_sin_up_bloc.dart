import 'package:flutter/material.dart';

class Emailsinupbloc {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool? success;
  String? userEmail;
}
