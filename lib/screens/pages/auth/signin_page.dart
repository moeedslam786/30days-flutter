import 'package:flutter/material.dart';
import 'package:flutter_thirty_days/globals/app_assests.dart';
import 'package:flutter_thirty_days/globals/app_colors.dart';
import 'package:flutter_thirty_days/globals/app_strings.dart';
import 'package:flutter_thirty_days/routes/routes.dart';
import 'package:flutter_thirty_days/screens/widgets/custom_button.dart';
import 'package:flutter_thirty_days/screens/widgets/custom_text_bar.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => SignInState();
}

class SignInState extends State<SignIn> {
  String name = "";
  bool buttonAnimation = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome() async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        buttonAnimation = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, Myroutes.homePage);
      setState(() {
        buttonAnimation = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.signIn,
                  height: 300,
                ),
                Text(
                  "Welcome ${name.length > 10 ? '${name.substring(0, 8)}...' : name}",
                  style: const TextStyle(
                    decorationColor: AppColors.blackColor,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextBox(
                        hintText: "Enter Username or Email",
                        labelText: "Username or Email",
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "please insert Username or Email ";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextBox(
                        hintText: "Enter Password",
                        labelText: "Password",
                        obscureText: true,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "please insert Password ";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 17),
                      CButton(
                        buttonName: AppStrings.signIn,
                        buttonAnimation: buttonAnimation,
                        onTap: moveToHome,
                      ),
                      const SizedBox(height: 50),
                      CButton(
                        width: 100,
                        buttonName: AppStrings.signUp,
                        buttonColor: AppColors.white,
                        textColor: AppColors.blackColor,
                        onTap: () {
                          Navigator.pushNamed(context, Myroutes.signup);
                        },
                      ),
                      const SizedBox(height: 30, child: Text('or')),
                      CButton(
                        width: 180,
                        buttonName: AppStrings.forgetPassword,
                        buttonColor: AppColors.white,
                        textColor: AppColors.blackColor,
                        onTap: () => Navigator.pushNamed(
                          context,
                          Myroutes.forgetPassword,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
