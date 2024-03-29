import 'package:flutter/material.dart';
import 'package:charify/screens/splash_screen.dart';
import 'package:charify/screens/login_screen.dart'; // Import the LoginScreen
import 'package:charify/screens/signup_screen.dart'; // Import the SignUpScreen
import 'package:charify/screens/campaigns_screen.dart'; // Import the CampaignsScreen
import 'package:charify/utils/constants.dart';
import 'package:charify/screens/exportsScreens.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Charify',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/splash', // Set the initial route
      routes: {
        '/splash': (context) => SplashScreen(), // Define the SplashScreen route
        '/': (context) => WelcomeScreen(), // Define the WelcomeScreen route
        '/home': (context) => HomePage(),
        '/article': (context) => Article(),
        '/login': (context) => LoginScreen(), // Define the LoginScreen route
        '/signup': (context) => SignUpScreen(), // Define the SignUpScreen route
        '/campaigns': (context) =>
            CampaignsScreen(), // Define the CampaignsScreen route
        EducationPage.id: (context) => EducationPage(),
        SeniorPage.id: (context) => SeniorPage(),
        Article.id: (context) => Article(),
        EHelp.id: (context) => EHelp(),
        Clothes.id: (context) => Clothes(),
        Health.id: (context) => Health(),

        // Add more routes for other screens
      },
    );
  }
}
