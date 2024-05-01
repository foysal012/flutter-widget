import 'package:flutter/material.dart';
import 'package:flutter_widget/fade_animation.dart';
import 'package:flutter_widget/swipe_button_animation.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      //home: FadeAnimationFoysal(),
      home: SwipeButtonAnimationFoysal(),
    );
  }
}
