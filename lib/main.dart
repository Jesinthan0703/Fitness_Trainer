import 'package:agora_flutter_quickstart/pages/test.dart';
import 'package:agora_flutter_quickstart/pages/videodetail_page.dart';
import 'package:agora_flutter_quickstart/pages/workout_page.dart';

import './pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provider/auth_model.dart';
import './provider/booking_model.dart';
import './provider/database_model.dart';
import './pages/launch_page.dart';
import './pages/trainer_page.dart';
import './pages/trainerhome_page.dart';

import './pages/training_page.dart';
import './pages/login_page.dart';
import './pages/signup_page.dart';
import './pages/welcome_page.dart';
import './pages/profile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
        ChangeNotifierProvider.value(
          value: DataBase(),
        ),
        ChangeNotifierProxyProvider<Auth, Booking>(
          create: null,
          update: (context, auth, previous) => Booking(
            auth.token,
            auth.userId,
          ),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.black,
          accentColor: Colors.pink[100],
          backgroundColor: const Color(0xffe3e3e3),
          buttonColor: Colors.lightBlue[300],
          appBarTheme: AppBarTheme(
              color: Colors.white, elevation: 4, shadowColor: Colors.grey),
        ),
        home: LaunchPage(),
        // home: TrainerHome(),
        // home: Example(),
        routes: {
          WelcomePage.routeName: (ctx) => WelcomePage(),
          LoginPage.routeName: (ctx) => LoginPage(),
          SignUpPage.routeName: (ctx) => SignUpPage(),
          TrainerPage.routeName: (ctx) => TrainerPage(),
          HomePage.routeName: (ctx) => HomePage(),
          TrainingPage.routeName: (ctx) => TrainingPage(),
          VideoDetail.routeName: (ctx) => VideoDetail(),
          TrainerHome.routeName: (ctx) => TrainerHome(),
          ProfilePage.routeName: (ctx) => ProfilePage(),
          WorkOutPage.routeName: (ctx) => WorkOutPage(),
        },
      ),
    );
  }
}
