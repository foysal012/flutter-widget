import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:lottie/lottie.dart';

class SwipeButtonAnimationFoysal extends StatefulWidget {
  const SwipeButtonAnimationFoysal({Key? key}) : super(key: key);

  @override
  State<SwipeButtonAnimationFoysal> createState() => _SwipeButtonAnimationFoysalState();
}

class _SwipeButtonAnimationFoysalState extends State<SwipeButtonAnimationFoysal> {

  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Padding(padding: EdgeInsets.only(
          left: 40,
          right: 40,
        ),
        child: SwipeableButtonView(
            onFinish: (){
              Navigator.push(context, PageTransition(
                  child: CompleteClass(),
                  type: PageTransitionType.fade,
              ),
              );
            },
            onWaitingProcess: (){
              Future.delayed(Duration(seconds: 2),
                  () async{
                    setState(() {
                      isFinished = true;
                    });
                  }
              );
            },
          isFinished: isFinished,
            activeColor: Colors.green,
            buttonWidget: Icon(Icons.arrow_forward_ios, color: Colors.black,),
            buttonText: "  Slider to Pay",
            buttontextstyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white
            ),
        ),
        )
      ),
    );
  }
}

class CompleteClass extends StatelessWidget {
  const CompleteClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network("https://lottie.host/511f5548-dd05-4fd4-a182-9bf1b8c86454/SAgnsEhpbt.json", height: 100, width: 100),
            Center(
              child: Text("Payment Completed",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.green
                ),
              ),
            ),
          ],
        ),
    );
  }
}


