import 'dart:io';

import 'package:apiintegrationsample/view/home_screen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'MyHttpOverrides.dart';
import 'controller/home_screen_controller.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeScreenController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Api Integration Demo',
        home: HomeScreen(),
      ),
    );
  }
}

