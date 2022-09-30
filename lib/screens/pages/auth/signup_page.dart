import 'package:flutter/material.dart';
import 'package:flutter_thirty_days/globals/app_assests.dart';
import 'package:flutter_thirty_days/globals/app_colors.dart';
import 'package:flutter_thirty_days/globals/app_strings.dart';
import 'package:flutter_thirty_days/routes/routes.dart';
import 'package:flutter_thirty_days/screens/widgets/custom_button.dart';
import 'package:flutter_thirty_days/screens/widgets/custom_text_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: Column(children: [
              Image.asset(
                AppAssets.signUp,
                height: 300,
              ),
              Text(
                AppStrings.signUp,
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primaryColor,
                ),
              ),
              const TextBox(labelText: "Name", hintText: "First Name"),
              const TextBox(hintText: "Last Name"),
              const TextBox(labelText: "Email", hintText: "Email"),
              const TextBox(
                hintText: "Enter Password",
                labelText: "Password",
                obscureText: true,
              ),
              const TextBox(labelText: "Re Enter Password", obscureText: true),
              const SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: AppColors.primaryColor,
                    textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textColor)),
                onPressed: () {
                  Navigator.pushNamed(context, Myroutes.homePage);
                },
                child: const Text("Submit"),
              ),
              const SizedBox(height: 10),
              const SizedBox(
                  height: 30,
                  child: Text('If your are aleady register click on Signin')),
              CButton(
                  width: 100,
                  buttonName: AppStrings.signIn,
                  buttonColor: AppColors.white,
                  textColor: AppColors.blackColor,
                  onTap: () {
                    Navigator.pushNamed(context, Myroutes.signin);
                  })
            ]),
          ),
        ),
      ),
    );
  }
}
