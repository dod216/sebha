import 'package:flutter/material.dart';
import 'package:untitled2/Taps/Sebha.dart';

import 'homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        dividerTheme: DividerThemeData(

          color: Color(0xffB7935F),
          thickness: 3,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Color(0xffB7935F),
            unselectedIconTheme: IconThemeData(
                color: Colors.white,
                size: 30
            ),
            selectedIconTheme: IconThemeData(
                color: Colors.black,
                size: 30
            ),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            primary: Color(0xffB7935F),
            secondary: Color(0xffB7935F).withOpacity(0.57),
            onPrimary: Colors.white,
            onSecondary: Colors.black
        ),
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            titleTextStyle: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold
            )
        ),
        cardTheme: CardTheme(
            margin: EdgeInsets.all(16),
            color: Colors.white.withOpacity(0.8),
            surfaceTintColor:Colors.white.withOpacity(0.8) ,
            elevation: 30
        ),
        useMaterial3: true,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        SebhaTab.routeName:(_)=>SebhaTab(),

      },
    );
  }
}