import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Icon',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:
                //App Icon ( Android & iOS)
                Image.asset('assets/icons/app_icon.png', height: 72, width: 72),
          ),
          SizedBox(height: 20),
          //Background and Foreground Adds Up To Make App Icon Adaptive ( Android )
          DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/app_icon_background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Image.asset('assets/icons/app_icon_foreground.png', height: 72, width: 72),
          ),
          SizedBox(height: 20),
          //App Icon Change With Theme Color ( Android )
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.lightGreen.shade100),
            child: Image.asset(
              'assets/icons/app_icon_monochrome.png',
              height: 72,
              width: 72,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 20),
          //App Icon Change With Theme Color ( iOS )
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.black),
            child: Image.asset(
              'assets/icons/app_icon_transparent.png',
              height: 72,
              width: 72,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
