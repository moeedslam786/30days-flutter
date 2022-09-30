import 'package:flutter/material.dart';
import 'package:flutter_thirty_days/globals/app_assests.dart';
import 'package:flutter_thirty_days/globals/app_strings.dart';
import 'package:flutter_thirty_days/routes/routes.dart';
import 'package:flutter_thirty_days/screens/widgets/custom_button.dart';
import 'package:flutter_thirty_days/screens/widgets/custom_text_bar.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final formkey1 = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (formkey1.currentState!.validate()) {
      await Navigator.pushNamed(context, Myroutes.homePage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Form(
          key: formkey1,
          child: Column(
            children: [
              Image.asset(
                AppAssets.signUp,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextBox(
                    hintText: AppStrings.enterEmail,
                    labelText: AppStrings.forgetPassword,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please fill username or Email";
                      }
                      return null;
                    }),
              ),
              const SizedBox(height: 30),
              CButton(
                buttonName: AppStrings.forgetPassword,
                onTap: () => moveToHome(context),
                height: 50,
                width: 170,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
