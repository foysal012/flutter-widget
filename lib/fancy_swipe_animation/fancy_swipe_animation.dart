import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class FancySwipeAnimation extends StatefulWidget {
  const FancySwipeAnimation({super.key});

  @override
  State<FancySwipeAnimation> createState() => _FancySwipeAnimationState();
}

class _FancySwipeAnimationState extends State<FancySwipeAnimation> {

  List<String> imagePathList = [
    "images/img1.jpeg",
    "images/img2.jpeg",
    "images/img3.jpeg",
    "images/img4.jpeg",
    "images/img5.jpeg",
    "images/img6.jpeg",
    "images/img7.jpeg",
    "images/img8.jpeg",
    "images/img9.jpeg",
    "images/img10.jpeg",
    "images/img11.jpeg",
    "images/img12.jpeg",
    "images/img13.jpeg",
    "images/img14.jpeg",
    "images/img15.jpeg",
    // "images/img16.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => debugPrint(''),
            icon: const Icon(Icons.arrow_back_ios_new)
        ),
        centerTitle: true,
        title: const Text("Card View"),
        backgroundColor: Colors.teal,
      ),
      body: Swiper(
          itemCount:imagePathList.length,
          itemHeight: 400,
        itemWidth: 400,
        duration: 1200,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(imagePathList[index])),
          ),
        ),
        layout: SwiperLayout.STACK,
      )
    );
  }
}
