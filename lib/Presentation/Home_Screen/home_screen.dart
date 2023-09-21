import 'package:flutter/material.dart';
import 'package:mobileappui/Presentation/Home_Screen/home_screen_widgets.dart';
import 'package:mobileappui/constants/color_constants.dart';
import 'package:mobileappui/constants/text_constants.dart';
import 'package:image_collage/image_collage.dart';

import '../../constants/widget_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Img> images;
  late List<Img> images1;
  late List<Img> images2;
  void initState() {
    super.initState();
    images = [
      Img(
          image:
              "https://images.unsplash.com/photo-1643779374659-70a427607bf9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
      Img(
        image:
            "https://images.unsplash.com/photo-1643836437012-0d5982bd105d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
      )
    ];
    images1 = [
        Img(
          image:
              "https://images.unsplash.com/photo-1643779374659-70a427607bf9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
      Img(
        image:
            "https://images.unsplash.com/photo-1643836437012-0d5982bd105d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
      ),
      Img(
        image:
            "https://images.unsplash.com/photo-1643836437012-0d5982bd105d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
      ),
       Img(
        image:
            "https://images.unsplash.com/photo-1643836437012-0d5982bd105d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
      ),
        Img(
        image:
            "https://images.unsplash.com/photo-1643836437012-0d5982bd105d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
      ),
    ];
    images2 = [
      Img(
          image:
              "https://images.unsplash.com/photo-1643779374659-70a427607bf9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
      Img(
        image:
            "https://images.unsplash.com/photo-1643836437012-0d5982bd105d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
      ),
      Img(
          image:
              "https://images.unsplash.com/photo-1643979870390-792a826644c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
      Img(
          image:
              "https://images.unsplash.com/photo-1643979870390-792a826644c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
    ];
  }

  @override
  Widget build(BuildContext context) {
    double sHeight = MediaQuery.of(context).size.height;
    double sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: textWidget(appName, appMainColor),
        actions: [
          Row(
            children: [
              iconWidget(Icons.search, () {}),
              iconWidget(Icons.bookmark_border_outlined, () {}),
              iconWidget(Icons.card_travel_sharp, () {}),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: home,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: tribe,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: category,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: profile,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: sHeight * 0.05,
              color: appMainColor,
              child: Center(child: textWidget(freeDelivery, appwhiteColor)),
            ),
            vSpacer(sHeight * 0.01),
            topRail(sHeight),
            ImageCollage(
              images: images1,
              onClick: (clickedImage, images) {},
            ),
          ],
        ),
      ),
    );
  }
}
