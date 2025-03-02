import 'package:flutter/material.dart';
import 'package:flutter_widget/Fade%20Animation/fade_animation.dart';
import 'package:flutter_widget/filter_data_from_api.dart';
import 'package:flutter_widget/swipe_button_animation/swipe_button_animation.dart';
import 'package:go_router/go_router.dart';
import 'Internet Connection/check_internet_connection_status.dart';
import 'fancy_swipe_animation/fancy_swipe_animation.dart';
import 'go_router_page/go_route_main_page.dart';
import 'go_router_page/go_route_second_page.dart';


void main() {
  runApp(const MyApp());
}
final GoRouter router = GoRouter(
  initialLocation: '/',  /// starting page
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const GoRouteMainPage(),
      ),
      GoRoute(
        path: '/secondPage/:name',
        name: 'homeDetails',
        builder: (context, state) {
          final name = state.pathParameters['name'];
          return GoRouteSecondPage(tips: 'Comes From $name');
        }
      )
    ]
);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     useMaterial3: true,
    //   ),
    //   debugShowCheckedModeBanner: false,
    //   //home: FadeAnimationFoysal(),
    //   //home: SwipeButtonAnimationFoysal(),
    //   //home: FilterDataFromApi(),
    //   // home: const CheckInternetConnectionStatus(),
    //   // home: const FancySwipeAnimation(),
    //   home: const GoRouteMainPage(),
    // );

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
