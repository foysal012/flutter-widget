import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRouteMainPage extends StatefulWidget {
  const GoRouteMainPage({super.key});

  @override
  State<GoRouteMainPage> createState() => _GoRouteMainPageState();
}

class _GoRouteMainPageState extends State<GoRouteMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Main Page'),
      ),

      body: Center(child: TextButton(
        onPressed: () {
            // context.go('/secondPage');
          // context.goNamed('homeDetails');

          ///for passing Parameter
          //   context.go('/secondPage/febric');
          context.goNamed('homeDetails', pathParameters: {'name':'joarder'});
        },
        child: const Text('Next Page')
      )
      ),
    );
  }
}
