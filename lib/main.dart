import 'package:flutter/material.dart';
import 'package:flutter_thirty_days/routes/routes.dart';
import 'package:flutter_thirty_days/screens/pages/auth/forget_password_page.dart';
import 'package:flutter_thirty_days/screens/pages/auth/signin_page.dart';
import 'package:flutter_thirty_days/screens/pages/auth/signup_page.dart';
import 'package:flutter_thirty_days/screens/pages/home/home_page.dart';
import 'package:flutter_thirty_days/theme/theme.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        Myroutes.signin: (context) => const SignIn(),
        Myroutes.homePage: (context) => HomePage(),
        Myroutes.forgetPassword: (context) => const ForgetPassword(),
        Myroutes.signup: (context) => const SignUp(),
      },
    );
  }
}
