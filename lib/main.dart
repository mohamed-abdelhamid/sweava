import 'package:flutter/material.dart';
import 'package:sweava/screens/home.dart';
import 'package:sweava/screens/login.dart';
import 'package:sweava/screens/splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'controllers/size_config.dart';


//  Color(0xffF26651) orange
// Color(0xff5F6062)  grey
// Color(0xffF2F2F2)  off white

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder:(context, child) {
        SizeConfig().init(context);
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
      theme: ThemeData(
        textTheme: GoogleFonts.ralewayTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      routes: {
        '/':(context)=> Splash(),
        'login':(context)=> Login(),
        'home':(context)=>Home(),
      },
      initialRoute:'/',
    );
  }
}
