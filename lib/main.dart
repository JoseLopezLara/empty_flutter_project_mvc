import 'package:build_layouts/src/pages/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Project',
      navigatorKey: navigatorKey,
      initialRoute: 'login',
      theme: ThemeData(
        fontFamily: 'proxima',
        appBarTheme: const AppBarTheme(
            elevation: 0.0,
            color:  Colors.blue
        ),
        primaryColor: Colors.blue,
      ),
      routes: {
        'login' : (BuildContext context) => HomePage(),
      },
    );
  }
}