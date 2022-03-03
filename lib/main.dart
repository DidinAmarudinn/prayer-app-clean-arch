import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:prayer_app/presentation/provider/bottom_navbar_provider.dart';
import 'package:prayer_app/presentation/provider/day_provider.dart';
import 'package:prayer_app/presentation/provider/onboarding_provider.dart';
import 'package:prayer_app/presentation/ui/pages/onboarding_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> OnBoardingProvider()),
        ChangeNotifierProvider(create: (_)=> BottomNavbarProvider()),
        ChangeNotifierProvider(create: (_)=> DayProvider()),
      ],
      child: GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
         
          primarySwatch: Colors.blue,
        ),
        home: const OnBoardScreen(),
      ),
    );
  }
}

