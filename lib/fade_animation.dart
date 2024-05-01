import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FadeAnimationFoysal extends StatefulWidget {
  const FadeAnimationFoysal({Key? key}) : super(key: key);

  @override
  State<FadeAnimationFoysal> createState() => _FadeAnimationFoysalState();
}

class _FadeAnimationFoysalState extends State<FadeAnimationFoysal> {

  bool _isVisibe = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text("Fade Animaition"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Here is container box for design",
            style: TextStyle(
              fontSize: 20, color: Colors.blue,
            ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: AnimatedOpacity(
                opacity: _isVisibe ? 1.0 : 0.0,
                duration: Duration(seconds: 1),
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.green,
                ),
              ),
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              _isVisibe = !_isVisibe;
            });
          },
      child: Icon(Icons.add),
      ),
    );
  }
}
