import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:robustremedy/screen/static/splash_screen.dart';


import 'package:robustremedy/themes/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

     return MaterialApp(
          title: 'Family Pharmacy Group',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme.copyWith(
            textTheme: GoogleFonts.muliTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          home: SplashScreen(),

        );
  }
}
