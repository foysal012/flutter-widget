import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRouteSecondPage extends StatefulWidget {
  const GoRouteSecondPage({super.key, required this.tips});

  final String tips;

  @override
  State<GoRouteSecondPage> createState() => _GoRouteSecondPageState();
}

class _GoRouteSecondPageState extends State<GoRouteSecondPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Second Page ${widget.tips}'),
      ),
      body: Container(
        child: Center(child: TextButton(
            onPressed: () {
              // context.go('/');
              context.goNamed('home');
            },
            child: Text('Previous Page')
        )
        ),
      ),
    );
  }
}
