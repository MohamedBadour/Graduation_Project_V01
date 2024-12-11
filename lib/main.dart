import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_page.dart';
import 'screens/register_page.dart';
import 'screens/forgot_password_page.dart';
import 'screens/verify_page.dart';
import 'screens/home_page.dart';
import 'screens/theme_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.lightTheme(context),
      darkTheme: ThemeConfig.darkTheme(context),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/Login': (context) => LoginPage(),
        '/Register': (context) => RegisterPage(),
        '/ForgotPassword': (context) => ForgotPasswordPage(),
        '/Verify': (context) => VerifyPage(),
        '/Home': (context) => const HomePage(),
      },
    );
  }
}