import 'package:beauty_pariour2/screens/login_screen/bloc_login_screen.dart';
import 'package:beauty_pariour2/shared_widget.dart/custom_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'email_login/email_login_page.dart';
import 'email_sign_up/email_sign_up_page.dart';

final FirebaseAuth firebaseauth = FirebaseAuth.instance;

class Loginscreen extends StatefulWidget {
  Loginscreen({Key? key}) : super(key: key);
  final bloc = Loginscreenbloc();
  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                      color: Colors.black,
                    ),
                  ),
                  const CustomText(
                    title: "Login",
                    fontSize: 18,
                    fontColor: Colors.black,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              const CustomText(
                title: "Beauty Cosmetics ",
                fontSize: 25,
                fontColor: Colors.pink,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: SignInButton(
                  Buttons.Email,
                  text: "Sign up with Email",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EmailloginPage()),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SignInButton(
                    Buttons.Google,
                    text: "Sign up with Google",
                    onPressed: () {},
                  )),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SignInButton(
                    Buttons.Twitter,
                    text: "Sign up with Twitter",
                    onPressed: () {},
                  )),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SignInButton(
                    Buttons.FacebookNew,
                    text: "Sign up with Facebook",
                    onPressed: () {},
                  )),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SignInButton(
                    Buttons.GitHub,
                    text: "Sign up with GitHub",
                    onPressed: () {},
                  )),
              SignInButtonBuilder(
                icon: Icons.whatsapp,
                text: "Sign up with whatsapp ",
                mini: false,
                onPressed: () {},
                backgroundColor: Colors.green,
              ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                      child: const Text("Log In Using Email",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.blue)),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EmailSignUpPage()),
                        );
                      })),

              // Container(
            ],
          ),
        ),
      ),
    );
  }
}
