
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget homeItem(
    {
   required String text,
  double fontSize = 18.0,
  double height = 150.0,
  double width = 150.0,
  Color color = Colors.white,
  Function()? onPress,
  double radius = 20.0,
 @required String? image ,



 })=>InkWell(
  onTap: onPress,
  child: Padding(
    padding: const EdgeInsets.only(left: 20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
          ),
          width: width,
          height: height,
          child:  Image(
            image: AssetImage(image!),
            //width: 100.0,
            // height: 100.0,
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize:fontSize, color: Colors.black),
        ),
      ],
    ),
  ),
);
 navigateTo({
   required BuildContext context,
  required Widget widget,
 })=>Navigator.push(
 context,
  MaterialPageRoute(
      builder:(context)=>widget,
  ),
);