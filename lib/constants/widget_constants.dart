import 'package:flutter/material.dart';

Widget hSpacer(double sWidth) {
  return SizedBox(
    width: sWidth,
  );
}

Widget vSpacer(double sHeight) {
  return SizedBox(height: sHeight);
}

Widget textWidget(String iText, Color iColor) {
  return Text(
    iText,
    style: TextStyle(color: iColor),
  );
}

Widget iconWidget(IconData iIcon, void Function()? onTap) {
  return IconButton(onPressed: onTap, icon: Icon(iIcon));
}
