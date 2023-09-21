import 'package:flutter/material.dart';
import '../../constants/color_constants.dart';
import '../../constants/text_constants.dart';
import '../../constants/widget_constants.dart';
   
Widget topRail(double sHeight){
  return    SizedBox(
            height: sHeight * 0.18,
            child: ListView.builder(
                itemCount: 10,
                 shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                primary: false,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: appMainColor,
                          radius: sHeight * 0.045,
                        ),
                        vSpacer(sHeight*0.01),
                        textWidget(apiData, Colors.black)
                      ],
                    ),
                  );
                }),
          );
}


  

  RoundedRectangleBorder buttonShape() {
    return RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0));
  }
