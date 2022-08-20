import 'package:beauty_pariour2/screens/login_screen/email_sign_up/email_sin_up_bloc.dart';
import 'package:beauty_pariour2/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmailSignUpPage extends StatefulWidget {
  EmailSignUpPage({Key? key}) : super(key: key);

//rayaalgizawi@gmail.com
//password roro_96
  @override
  State<EmailSignUpPage> createState() => _EmailSignUpPageState();
}

class _EmailSignUpPageState extends State<EmailSignUpPage> {
  final bloc = Emailsinupbloc();
  @override
  void dispose() {
    bloc.emailController.dispose();
    bloc.passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beauty Cosmetics'),
        backgroundColor: const Color(0xffde5d83),
        centerTitle: true,
      ),
      body: Form(
        key: bloc.formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/signup.svg"),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: bloc.emailController,
                  decoration: InputDecoration(
                    hintText: 'you@example.com',
                    labelText: 'E-mail Address',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (String? value) {
                    if (value == null) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: bloc.passwordController,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Enter your password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (String? value) {
                    if (value == null) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                alignment: Alignment.center,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () async {
                    if (bloc.formKey.currentState!.validate()) {
                      //  signInWithEmailAndPassword();
                      _register();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Enter Your Email & password")));
                    }
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(bloc.success == null
                    ? ''
                    : (bloc.success!
                        ? 'Successfully registered ${bloc.userEmail!}'
                        : 'Registration failed?')),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _register() async {
    final user = (await firebaseauth.createUserWithEmailAndPassword(
      email: bloc.emailController.text,
      password: bloc.passwordController.text,
    ))
        .user;

    if (user != null) {
      setState(() {
        bloc.success = true;
        bloc.userEmail = user.email;
      });
    } else {
      setState(() {
        bloc.success = true;
      });
    }
  }
}
